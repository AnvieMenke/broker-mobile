import 'package:broker_mobile/proto/pkgpb/healthv1.pbgrpc.dart';
import 'package:flutter/foundation.dart';
import '../server/grpc_client_factory.dart';
import 'package:grpc/grpc.dart';

class HealthCheckService {
  final HealthClient _service = GrpcClientFactory.create(HealthClient.new);

  Future<bool> checkService() async {
    try {
      final request = HealthCheckRequest()..service = "SAS Mobile";
      final response = await _service.check(request);
      return response.status == HealthCheckResponse_ServingStatus.SERVING;
    } on GrpcError catch (e) {
      if (kDebugMode) {
        print('gRPC error: ${e.message}');
      }
      return false;
    } catch (e) {
      if (kDebugMode) {
        print('Unexpected error: $e');
      }
      return false;
    }
  }
}
