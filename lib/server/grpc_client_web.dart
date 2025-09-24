import 'package:grpc/grpc_web.dart';
import 'package:broker_mobile/env.dart';

GrpcWebClientChannel getGrpcChannel() {
  return GrpcWebClientChannel.xhr(Uri.parse(AppEnv.grpcWebEndpoint));
}
