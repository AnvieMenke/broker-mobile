import 'package:broker_mobile/proto/reportpb/position.pbgrpc.dart';
import '../server/grpc_client_factory.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class PositionService {
  final _service = GrpcClientFactory.create(PositionServiceClient.new);

  Future<ListPositionResponse> listPosition(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final req = ListPositionRequest()
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
      ..accountNo = param['accountNo'] ?? ""
      ..correspondent = param['correspondent'] ?? ""
      ..masterAccountNo = param['masterAccountNo'] ?? ""
      ..rep = param['rep'] ?? ""
      ..branch = param['branch'] ?? ""
      ..assetType = param['assetType'] ?? ""
      ..symbol = param['symbol'] ?? ""
      ..rollUp = "Account No";

    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? "account_no"
        ..sortDirection = paging["sortDirection"] ?? "ASC";

      req.pagination = paginationReq;
    }
    try {
      final response = await _service.listPosition(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<GetPositionAccountAllocationResponse> getPositionAccountAllocation(
      String type) async {
    final req = GetPositionAccountAllocationRequest();

    try {
      final response = await _service.getPositionAccountAllocation(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
