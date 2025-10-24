import 'package:broker_mobile/proto/admpb/contactus.pbgrpc.dart';
import 'package:broker_mobile/service/convert_service.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';

class ContactUsService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  ContactUsServiceClient _contactUsService() {
    final channel = _createChannel();

    final client = ContactUsServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  late final contactUsService = _contactUsService();

  Future<CreateContactUsResponse> create(Map<String, dynamic> param) async {
    final req = ContactUs()
      ..pageComponent = param['pageComponent'] ?? ""
      ..subject = param['subject'] ?? ""
      ..description = param['description'] ?? ""
      ..status = param['status'] ?? "";
    try {
      final response = await contactUsService.createContactUs(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListContactUsResponse> listContactUs(
    Map<String, dynamic> param,
    Map<String, dynamic>? paging,
  ) async {
    final req = ListContactUsRequest()..status = param["status"] ?? "";

    if (paging != null && paging.isNotEmpty) {
      var paginationReq = Pagination()
        ..pageNo = paging["pageNo"] ?? 0
        ..pageSize = paging["rowsPerPage"] ?? 100
        ..sortName = paging["sortName"] ?? "contact_us_id"
        ..sortDirection = paging["sortDirection"] ?? "DESC";

      req.pagination = paginationReq;
    }
    try {
      final response = await contactUsService.listContactUs(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<UpdateContactUsResponse> update(Map<String, dynamic> param) async {
    final req = ContactUs()
      ..contactUsId = ConvertService.safeInt(param['contactUsId'])
      ..pageComponent = param['pageComponent'] ?? ""
      ..subject = param['subject'] ?? ""
      ..description = param['description'] ?? ""
      ..status = param['status'] ?? "";
    try {
      final response = await contactUsService.updateContactUs(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
