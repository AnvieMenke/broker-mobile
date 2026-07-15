import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

import 'chat_message.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessage message;

  const ChatBubble({
    super.key,
    required this.message,
  });

  Future<void> _openLink(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  void _showImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.black,
        child: PhotoView(
          imageProvider: NetworkImage(imageUrl),
          backgroundDecoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final hasTable = message.text.contains("|") && message.text.contains("---");

    final markdown = MarkdownBody(
      data: message.text,
      selectable: true,
      shrinkWrap: true,
      sizedImageBuilder: (MarkdownImageConfig config) {
        final imageUrl = config.uri.toString();

        return GestureDetector(
          onTap: () => _showImage(context, imageUrl),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: config.width,
              height: config.height,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
      onTapLink: (text, href, title) {
        if (href != null) {
          _openLink(href);
        }
      },
    );

    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: message.isUser
              ? MediaQuery.of(context).size.width * .80
              : hasTable
                  ? MediaQuery.of(context).size.width * .95
                  : MediaQuery.of(context).size.width * .80,
        ),
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: message.isUser
              ? Theme.of(context).colorScheme.primary
              : (isDark ? Colors.grey.shade800 : Colors.grey.shade300),
          borderRadius: BorderRadius.circular(18),
        ),
        child: message.isUser
            ? Text(
                message.text,
                style: TextStyle(
                  color: isDark ? Colors.black : Colors.white,
                  fontSize: 15,
                ),
              )
            : hasTable
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: 2000,
                      child: markdown,
                    ),
                  )
                : markdown,
      ),
    );
  }
}
