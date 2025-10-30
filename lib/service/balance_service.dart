import 'package:broker_mobile/proto/reportpb/balance.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class BalanceService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  BalanceServiceClient _balanceService() {
    final channel = _createChannel();

    final client = BalanceServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<ListBalanceResponse> listBalance(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final client = _balanceService();
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
      final response = await client.listBalance(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListDashboardBalanceResponse> listDashboardBalance(
      Map<String, dynamic> param) async {
    final client = _balanceService();
    final req = ListDashboardBalanceRequest()
      ..periodType = param['periodType'] ?? ""
      ..periodRange = ConvertService.safeInt(param['periodRange']);

    try {
      final response = await client.listDashboardBalance(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
