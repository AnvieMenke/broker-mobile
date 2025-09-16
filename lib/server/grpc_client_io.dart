import 'package:grpc/grpc.dart';
import 'package:broker_mobile/env.dart';

ClientChannel getGrpcChannel() {
  final uri = Uri.parse(AppEnv.grpcEndpoint);
  return ClientChannel(
    uri.host,
    port: uri.port,
    options: ChannelOptions(
      credentials: uri.scheme == 'https'
          ? const ChannelCredentials.secure()
          : const ChannelCredentials.insecure(),
    ),
  );
}