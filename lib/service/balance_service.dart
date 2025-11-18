import 'package:broker_mobile/proto/reportpb/balance.pbgrpc.dart';
import '../server/grpc_client_factory.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class BalanceService {
  final _service = GrpcClientFactory.create(BalanceServiceClient.new);

  Future<ListBalanceResponse> listBalance(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final req = ListBalanceRequest()
      ..dateType = param['dateType'] ?? ""
      ..fromDate = ConvertService.stringToPBObjectDate(
        param["fromDate"] != null
            ? DateTime.parse(param["fromDate"])
            : DateTime.now(),
      )
      ..toDate = ConvertService.stringToPBObjectDate(
        param["toDate"] != null
            ? DateTime.parse(param["toDate"])
            : DateTime.now(),
      )
      ..accountNo = param['accountNo'] ?? "";

    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? ""
        ..sortDirection = paging["sortDirection"] ?? "ASC";

      req.pagination = paginationReq;
    }

    try {
      final response = await _service.listBalance(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListDashboardBalanceResponse> listDashboardBalance(
      Map<String, dynamic> param) async {
    final req = ListDashboardBalanceRequest()
      ..periodType = param['periodType'] ?? ""
      ..periodRange = ConvertService.safeInt(param['periodRange']);

    try {
      final response = await _service.listDashboardBalance(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
