import 'package:broker_mobile/proto/usrpb/access.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:protobuf/protobuf.dart';
import '../server/grpc_client.dart';

class UsrAccessService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  UsrAccessServiceClient _usrSvc() {
    final channel = _createChannel();

    final client = UsrAccessServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<PbList<UsrAccess>> listUsrAccess(
      int roleId, String requestType) async {
    final client = _usrSvc();
    final req = ListUsrAccessRequest()
      ..roleId = roleId
      ..requestType = requestType;

    try {
      final response = await client.listUsrAccess(req);
      return response.usrAccesses;
    } catch (e) {
      rethrow;
    }
  }
}
