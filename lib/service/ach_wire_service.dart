import 'package:broker_mobile/proto/bankpb/request.pbgrpc.dart';
import 'package:broker_mobile/src/common/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../src/common/grpc_client.dart';

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

  Future<ReadMaximumWithdrawableResponse> readMaximumWithdrawable(
      String correspondent, accountNo) async {
    final client = _achWireSvc();
    final req = ReadMaximumWithdrawableRequest()
      ..correspondent = correspondent
      ..accountNo = accountNo ?? "";

    try {
      final response = await client.readMaximumWithdrawable(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<GetFeeResponse> getFee(param) async {
    final client = _achWireSvc();
    final req = GetFeeRequest()
      ..correspondent = param['correspondent'] ?? ""
      ..accountNo = param["accountNo"] ?? ""
      ..amt = param["amount"]?.toString() ?? ""
      ..requestType = param["requestType"] ?? ""
      ..transferType = param["transferType"] ?? ""
      ..isInternational = param["isInternational"] ?? false
      ..broker = param["broker"] ?? "";

    try {
      final response = await client.getFee(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<CreateResponse> createRequest(param) async {
    final client = _achWireSvc();

    final req = CreateRequest()
      ..correspondent = param['correspondent'] ?? ""
      ..accountNo = param["accountNo"] ?? ""
      ..bankId = (param["bankAccountId"] != null ? int.tryParse(param["bankAccountId"].toString()) : null)!
      ..transferType = param["transferType"] ?? ""
      ..amt = param["amount"]?.toString() ?? ""
      ..fee = param["fee"]?.toString() ?? ""
      ..fedNo = param["fedNo"] ?? ""
      ..externalId = param["externalId"] ?? ""
      ..bank = param["bank"] ?? ""
      ..bankNote = param["bankNote"] ?? ""
      ..internalNote = param["internalNote"] ?? ""
      ..status = param["status"] ?? ""
      ..requestType = param["requestType"] ?? "";

    try {
      final response = await client.create(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<GetNewRequestIdResponse> getNewId() async {
    final client = _achWireSvc();

    final req = GetNewRequestIdRequest();
    try {
      final response = await client.getNewRequestId(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
