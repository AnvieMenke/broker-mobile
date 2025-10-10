import '../proto/marginpb/calllog.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class CallLogService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  CallLogServiceClient _callLogService() {
    final channel = _createChannel();

    final client = CallLogServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<ListCallLogResponse> listCallLog(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final client = _callLogService();
    final req = ListCallLogRequest()
      ..correspondent = param['correspondent'] ?? ""
      ..masterAccountNo = param['masterAccountNo'] ?? ""
      ..marginType = param['marginType'] ?? ""
      ..accountName = param['accountName'] ?? ""
      ..callStatus = "Pending";

    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? ""
        ..sortDirection = paging["sortDirection"] ?? "ASC";

      req.pagination = paginationReq;
    }
    try {
      final response = await client.listCallLog(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
