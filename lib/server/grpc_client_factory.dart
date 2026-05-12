import 'dart:io';
import 'package:broker_mobile/server/auth_interceptor.dart';
import 'package:broker_mobile/server/grpc_client.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/messages/notification.dart';
import '../navigator.dart';
import '../session/session.dart';
import '../utils/fmt/fmt.dart';
import 'global_grpc_error_interceptor.dart';

class GrpcClientFactory {
  static T create<T extends Client>(
    T Function(ClientChannelBase channel,
            {CallOptions? options, List<ClientInterceptor>? interceptors})
        constructor,
  ) {
    return constructor(
      getGrpcChannel(),
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [
        AuthInterceptor(),
        GlobalGrpcErrorInterceptor(onGrpcError: globalGrpcErrorHandler),
      ],
    );
  }
}

void globalGrpcErrorHandler(Object error) {
  final navigator = navigatorKey.currentState;

  if (navigator == null) return;

  if (error is GrpcError && error.code == StatusCode.permissionDenied) {
    Notify.error(FormatUtils.cleanErrorMessage(error));
    return;
  }

  if (error is GrpcError &&
      error.code == StatusCode.failedPrecondition &&
      error.message ==
          'Your app version is outdated. Please update to the latest version to continue.') {
    final context = navigator.overlay?.context;

    if (context != null) {
      showForceUpdateDialog(context);
    }

    return;
  }

  final isMaintenanceError = error is SocketException ||
      (error is GrpcError &&
          error.code == StatusCode.unavailable &&
          error.message!.contains('Error connecting'));

  if (isMaintenanceError) {
    navigator.pushNamedAndRemoveUntil(
      '/maintenance',
      (route) => false,
    );

    sessionManager.logout(null, false);
  }
}

Future<void> openStore() async {
  final url = Platform.isIOS
      ? Uri.parse('https://apps.apple.com/ph/app/sas-broker/id6755288419')
      : Uri.parse(
          'https://play.google.com/store/apps/details?id=com.anviemenke.broker');

  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not open store';
  }
}

void showForceUpdateDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('Update Required'),
        content: const Text(
          'Your app version is outdated. Please update to continue.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              openStore();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Platform.isIOS ? Icons.apple : Icons.shop,
                ),
                const SizedBox(width: 8),
                Text(
                  Platform.isIOS ? 'Go to App Store' : 'Go to Play Store',
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
