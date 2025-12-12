import 'package:broker_mobile/proto/reportpb/activity.pbgrpc.dart';
import '../server/grpc_client_factory.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class ActivityService {
  final _service = GrpcClientFactory.create(ActivityServiceClient.new);

  Future<ListActivityResponse> listActivity(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final req = ListActivityRequest()
      ..dateType = "Trade Date"
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
      ..description = param['description'] ?? "";
    final entryTypeParam = param['entryType'];
    if (entryTypeParam != null) {
      if (entryTypeParam is Iterable<String>) {
        req.entryTypes.addAll(entryTypeParam);
      } else if (entryTypeParam is Iterable) {
        req.entryTypes.addAll(entryTypeParam.map((e) => e.toString()));
      } else if (entryTypeParam is String && entryTypeParam.trim().isNotEmpty) {
        req.entryTypes.addAll(entryTypeParam
            .split(',')
            .map((e) => e.trim())
            .where((e) => e.isNotEmpty));
      }
    }
    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? "tradeDate,accountNo"
        ..sortDirection = paging["sortDirection"] ?? "ASC";

      req.pagination = paginationReq;
    }

    try {
      final response = await _service.listActivity(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
