import 'package:grpc/grpc_web.dart';
import 'package:broker_mobile/env.dart';

GrpcWebClientChannel getGrpcChannel() {
  final uri = Uri.parse(AppEnv.grpcEndpoint);
  print("Web gRPC URI: $uri");

  return GrpcWebClientChannel.xhr(Uri.parse(AppEnv.grpcEndpoint));
}
