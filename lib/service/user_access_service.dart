import 'package:broker_mobile/proto/usrpb/usraccess.pbgrpc.dart';
import 'package:protobuf/protobuf.dart';
import '../server/grpc_client_factory.dart';

class UsrAccessService {
  final _service = GrpcClientFactory.create(UsrAccessServiceClient.new);

  Future<PbList<AccessFunction>> listRoleAccess(
      String access, subAccess) async {
    final req = ListRoleAccessFunctionRequest()
      ..access = access
      ..subAccess = subAccess;

    try {
      final response = await _service.listRoleAccessFunction(req);
      return response.accesses;
    } catch (e) {
      rethrow;
    }
  }
}
