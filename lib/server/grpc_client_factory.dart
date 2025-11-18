import 'dart:io';
import 'package:broker_mobile/server/auth_interceptor.dart';
import 'package:broker_mobile/server/grpc_client.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../navigator.dart';
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
  if (navigatorKey.currentState == null) return;

  if (error is SocketException ||
      (error is GrpcError && error.code == StatusCode.unavailable)) {
    navigatorKey.currentState?.pushNamedAndRemoveUntil(
      '/maintenance',
      (route) => false,
    );
  }
}
