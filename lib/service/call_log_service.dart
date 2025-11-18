import '../proto/marginpb/calllog.pbgrpc.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

import '../server/grpc_client_factory.dart';

class CallLogService {
  final _service = GrpcClientFactory.create(CallLogServiceClient.new);

  Future<ListCallLogResponse> listCallLog(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
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
      final response = await _service.listCallLog(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
