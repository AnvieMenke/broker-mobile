import 'package:broker_mobile/env.dart';
import 'package:grpc/grpc.dart';

class SupportClientInterceptor extends ClientInterceptor {
  static final _metadata = {
    'jwt-audience': 'SAS UI',
    'authorization': 'Bearer ${AppEnv.supportClientId}',
  };

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
      ClientMethod<Q, R> method,
      Q request,
      CallOptions options,
      ClientUnaryInvoker<Q, R> invoker,
      ) {
    return invoker(
      method,
      request,
      options.mergedWith(
        CallOptions(
          metadata: _metadata,
        ),
      ),
    );
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker,
      ) {
    return invoker(
      method,
      requests,
      options.mergedWith(
        CallOptions(
          metadata: _metadata,
        ),
      ),
    );
  }
}