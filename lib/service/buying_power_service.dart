import '../proto/marginpb/buyingpower.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class BuyingPowerService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  BuyingPowerServiceClient _buyingPowerService() {
    final channel = _createChannel();

    final client = BuyingPowerServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<ListBuyingPowerResponse> listBuyingPower(
      Map<String, dynamic> param, Map<String, dynamic>? paging) async {
    final client = _buyingPowerService();
    final req = ListBuyingPowerRequest()
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
      ..correspondent = param['correspondent'] ?? ""
      ..masterAccountNo = param['masterAccountNo'] ?? ""
      ..marginType = param['marginType'] ?? ""
      ..accountName = param['accountName'] ?? ""
      ..hideZero = ConvertService.safeBool(param['hideZero']);

    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? ""
        ..sortDirection = paging["sortDirection"] ?? "ASC";

      req.pagination = paginationReq;
    }
    try {
      final response = await client.listBuyingPower(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
