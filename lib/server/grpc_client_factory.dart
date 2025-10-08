import 'package:broker_mobile/server/auth_interceptor.dart';
import 'package:broker_mobile/server/grpc_client.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

class GrpcClientFactory {
  static T create<T extends Client>(
    T Function(ClientChannelBase channel,
            {CallOptions? options, List<ClientInterceptor>? interceptors})
        constructor,
  ) {
    return constructor(
      getGrpcChannel(),
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );
  }
}
