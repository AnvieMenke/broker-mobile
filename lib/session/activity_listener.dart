import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActivityListener extends StatefulWidget {
  final Widget child;
  final VoidCallback onActivity;

  const ActivityListener({
    super.key,
    required this.child,
    required this.onActivity,
  });

  @override
  State<ActivityListener> createState() => _ActivityListenerState();
}

class _ActivityListenerState extends State<ActivityListener> {
  late FocusNode _focusNode;
  Timer? _scrollDebounce;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode(skipTraversal: true); //  avoids traversal crash
  }

  @override
  void dispose() {
    _scrollDebounce?.cancel();
    _focusNode.dispose(); //  dispose properly
    super.dispose();
  }

  void _handleActivity() {
    widget.onActivity();
  }

  void _debouncedActivity() {
    _scrollDebounce?.cancel();
    _scrollDebounce = Timer(const Duration(milliseconds: 300), _handleActivity);
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => _handleActivity(),
      onPointerMove: (_) => _debouncedActivity(), // drag
      onPointerSignal: (_) => _debouncedActivity(), // scroll wheel/touchpad
      child: KeyboardListener(
        focusNode: _focusNode,
        autofocus: true, // 👈 ensures it gets events
        onKeyEvent: (KeyEvent event) {
          if (event is KeyDownEvent) {
            _handleActivity();
          }
        },
        child: NotificationListener<ScrollEndNotification>(
          onNotification: (notification) {
            _handleActivity(); // only when scroll finishes
            return false;
          },
          child: widget.child,
        ),
      ),
    );
  }
}
