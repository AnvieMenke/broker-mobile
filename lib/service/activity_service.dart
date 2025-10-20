import 'package:broker_mobile/proto/reportpb/activity.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class ActivityService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  ActivityServiceClient _activityService() {
    final channel = _createChannel();

    final client = ActivityServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<ListActivityResponse> listActivity(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final client = _activityService();
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
      ..entryType = (() {
        final entryTypeParam = param['entryType'];
        if (entryTypeParam == null) return "";

        if (entryTypeParam is List && entryTypeParam.isNotEmpty) {
          return "'${entryTypeParam.join("','")}'";
        }

        if (entryTypeParam is String && entryTypeParam.isNotEmpty) {
          final parts = entryTypeParam.split(",").map((e) => e.trim()).toList();
          return "'${parts.join("','")}'";
        }

        return "";
      })()
      ..description = param['description'] ?? "";

    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? ""
        ..sortDirection = paging["sortDirection"] ?? "ASC";

      req.pagination = paginationReq;
    }

    try {
      final response = await client.listActivity(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
