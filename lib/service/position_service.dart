import 'package:broker_mobile/proto/reportpb/position.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class PositionService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  PositionServiceClient _positionService() {
    final channel = _createChannel();

    final client = PositionServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<ListPositionResponse> listPosition(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final client = _positionService();
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
      final response = await client.listPosition(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
