import 'package:broker_mobile/proto/admpb/lazylist.pbgrpc.dart';
import 'package:broker_mobile/service/convert_service.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import '../server/auth_interceptor.dart';

class CommonService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  LazyListServiceClient _lazyClient() {
    final channel = _createChannel();

    final client = LazyListServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<LazyLoadSecurityResponse> lazyLoadSecurities(
      String key, assetType, int limit, bool isActive) async {
    final client = _lazyClient();
    final req = LazyLoadSecurityRequest()
      ..key = key
      ..limit = ConvertService.safeInt(limit)
      ..assetType = assetType
      ..isActive = isActive;

    try {
      final response = await client.lazySecurity(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
