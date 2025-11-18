import 'package:grpc/grpc.dart';

class GlobalGrpcErrorInterceptor implements ClientInterceptor {
  final void Function(Object error) onGrpcError;

  GlobalGrpcErrorInterceptor({required this.onGrpcError});

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ResponseFuture<R> Function(ClientMethod<Q, R>, Q, CallOptions) invoker,
  ) {
    final future = invoker(method, request, options);

    future.catchError((error) {
      onGrpcError(error);
      throw error;
    });

    return future;
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    ResponseStream<R> Function(ClientMethod<Q, R>, Stream<Q>, CallOptions)
        invoker,
  ) {
    final responseStream = invoker(method, requests, options);

    responseStream.handleError((error) {
      onGrpcError(error);
      throw error;
    });

    return responseStream;
  }

  ResponseStream<R> interceptUnaryStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ResponseStream<R> Function(ClientMethod<Q, R>, Q, CallOptions) invoker,
  ) {
    final responseStream = invoker(method, request, options);

    responseStream.handleError((error) {
      onGrpcError(error);
      throw error;
    });

    return responseStream;
  }

  ResponseFuture<R> interceptStreamingUnary<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    ResponseFuture<R> Function(ClientMethod<Q, R>, Stream<Q>, CallOptions)
        invoker,
  ) {
    final future = invoker(method, requests, options);

    future.catchError((error) {
      onGrpcError(error);
      throw error;
    });

    return future;
  }
}
