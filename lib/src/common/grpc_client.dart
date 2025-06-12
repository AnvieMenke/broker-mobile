import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/grpc_connection_interface.dart' as grpc_interface;
import 'package:grpc/grpc_web.dart' as grpc_web;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:broker_mobile/env.dart';

grpc_interface.ClientChannelBase getGrpcChannel() {
  final uri = Uri.parse(AppEnv.grpcEndpoint);

  if (kIsWeb) {
    return grpc_web.GrpcWebClientChannel.xhr(uri);
  }

  return grpc.ClientChannel(
    uri.host,
    port: uri.hasPort ? uri.port : (uri.scheme == 'https' ? 443 : 80),
    options: grpc.ChannelOptions(
      credentials: uri.scheme == 'https'
          ? const grpc.ChannelCredentials.secure()
          : const grpc.ChannelCredentials.insecure(),
    ),
  );
}