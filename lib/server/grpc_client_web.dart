import 'package:grpc/grpc_web.dart';
import 'package:broker_mobile/env.dart';

GrpcWebClientChannel getGrpcChannel() {
  final uri = Uri.parse(AppEnv.grpcEndpoint);

  return GrpcWebClientChannel.xhr(Uri.parse(AppEnv.grpcEndpoint));
}
