import 'package:grpc/grpc.dart';
import '../../service/auth_service.dart' as AuthService;

class AuthInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    invoker,
  ) {
    final token = AuthService.AuthService.cachedToken;
    final newOptions = (token != null && token.isNotEmpty)
        ? options.mergedWith(
            CallOptions(metadata: {
              ...options.metadata,
              'Authorization': 'Bearer $token',
            }),
          )
        : options;

    final response = invoker(method, request, newOptions);

    response.catchError((error) {
      if (error is GrpcError && error.code == StatusCode.unauthenticated) {
        AuthService.logout(error.message ?? 'Unauthenticated');
      }
    });

    return response;
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    invoker,
  ) {
    final token = AuthService.AuthService.cachedToken;
    final newOptions = (token != null && token.isNotEmpty)
        ? options.mergedWith(
            CallOptions(metadata: {
              ...options.metadata,
              'Authorization': 'Bearer $token',
            }),
          )
        : options;

    final response = invoker(method, requests, newOptions);

    response.handleError((error) {
      if (error is GrpcError && error.code == StatusCode.unauthenticated) {
        AuthService.logout(error.message ?? 'Unauthenticated');
      }
    });

    return response;
  }
}
