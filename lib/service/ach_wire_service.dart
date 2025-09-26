import 'package:broker_mobile/proto/bankpb/request.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import 'convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class AchWireService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  RequestServiceClient _achWireSvc() {
    final channel = _createChannel();

    final client = RequestServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  late final achService = _achWireSvc();

  Future<ReadMaximumWithdrawableResponse> readMaximumWithdrawable(
      String correspondent, accountNo) async {
    final req = ReadMaximumWithdrawableRequest()
      ..correspondent = correspondent
      ..accountNo = accountNo ?? "";

    try {
      final response = await achService.readMaximumWithdrawable(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<GetFeeResponse> getFee(Map<String, dynamic> param) async {
    final req = GetFeeRequest()
      ..correspondent = param['correspondent'] ?? ""
      ..accountNo = param["accountNo"] ?? ""
      ..amt = param["amount"]?.toString() ?? ""
      ..requestType = param["requestType"] ?? ""
      ..transferType = param["transferType"] ?? ""
      ..isInternational = ConvertService.safeBool(param["isInternational"])
      ..broker = param["broker"] ?? "";

    try {
      final response = await achService.getFee(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<CreateResponse> createRequest(Map<String, dynamic> param) async {
    final req = CreateRequest()
      ..correspondent = param['correspondent'] ?? ""
      ..accountNo = param["accountNo"] ?? ""
      ..accountId = (param["accountId"] != null
          ? int.tryParse(param["accountId"].toString())
          : null)!
      ..bankId = (param["bankId"] != null
          ? int.tryParse(param["bankId"].toString())
          : null)!
      ..transferType = param["transferType"] ?? ""
      ..amt = param["amt"]?.toString() ?? ""
      ..fee = param["fee"]?.toString() ?? ""
      ..fedNo = param["fedNo"] ?? ""
      ..externalId = param["externalId"] ?? ""
      ..status = param["status"] ?? ""
      ..requestType = param["requestType"] ?? "";

    try {
      final response = await achService.create(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListResponse> listBankRequest(
    Map<String, dynamic> param,
    Map<String, dynamic>? paging,
  ) async {
    final req = ListRequest()
      ..dateType = param["dateType"] ?? ""
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
      ..accountNo = param["accountNo"] ?? ""
      ..correspondent = param["correspondent"] ?? ""
      ..masterAccountNo = param["masterAccountNo"] ?? ""
      ..transferType = param["transferType"] ?? ""
      ..status = param["status"] ?? ""
      ..requestType = param["requestType"] ?? ""
      ..branch = param["branch"] ?? ""
      ..rep = param["rep"] ?? ""
      ..externalId = param["externalId"] ?? ""
      ..isOpen = ConvertService.safeBool(param["isOpen"])
      ..sign = param["sign"] ?? ""
      ..amount = param["amount"]?.toString() ?? "";

    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? "request_id"
        ..sortDirection = paging["sortDirection"] ?? "ASC";

      req.pagination = paginationReq;
    }
    try {
      final response = await achService.list(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<UpdateResponse> updateRequest(Map<String, dynamic> param) async {
    final req = UpdateRequest()
      ..requestId = ConvertService.safeInt(param["requestId"])
      ..amt = param["amt"]?.toString() ?? ""
      ..fee = param["fee"]?.toString() ?? ""
      ..status = param["status"] ?? "";

    try {
      final response = await achService.update(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
