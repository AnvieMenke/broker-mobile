import 'package:broker_mobile/proto/usrpb/usraccess.pbgrpc.dart';
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

  Future<PbList<AccessFunction>> listRoleAccess(
      String access, subAccess) async {
    final client = _usrSvc();
    final req = ListRoleAccessFunctionRequest()
      ..access = access
      ..subAccess = subAccess;

    try {
      final response = await client.listRoleAccessFunction(req);
      return response.accesses;
    } catch (e) {
      rethrow;
    }
  }
}
