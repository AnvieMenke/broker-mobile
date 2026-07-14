
import 'package:broker_mobile/server/grpc_client_io.dart';
import 'package:broker_mobile/server/support_client_interceptor.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../components/messages/notification.dart';
import 'global_grpc_error_interceptor.dart';

class SupportGrpcClientFactory {
  static T create<T extends Client>(
      T Function(
          ClientChannelBase channel, {
          CallOptions? options,
          List<ClientInterceptor>? interceptors,
          }) constructor,
      ) {
    return constructor(
      getSupportGrpcChannel(),
      options: CallOptions(
        timeout: Duration(seconds: 120),
      ),
      interceptors: [
        SupportClientInterceptor(),
        GlobalGrpcErrorInterceptor(
          onGrpcError: supportGrpcErrorHandler,
        ),
      ],
    );
  }
}

void supportGrpcErrorHandler(Object error) {
  if (error is GrpcError) {
    Notify.error(error.message ?? error.toString());
    return;
  }

  Notify.error(error.toString());
}