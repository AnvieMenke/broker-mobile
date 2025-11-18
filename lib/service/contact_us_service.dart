import 'package:broker_mobile/proto/admpb/contactus.pbgrpc.dart';
import 'package:broker_mobile/service/convert_service.dart';
import 'package:broker_mobile/proto/utilspb/pagination.pb.dart';
import '../server/grpc_client_factory.dart';

class ContactUsService {
  final _service = GrpcClientFactory.create(ContactUsServiceClient.new);

  Future<CreateContactUsResponse> create(Map<String, dynamic> param) async {
    final req = ContactUs()
      ..pageComponent = param['pageComponent'] ?? ""
      ..subject = param['subject'] ?? ""
      ..description = param['description'] ?? ""
      ..status = param['status'] ?? "";
    try {
      final response = await _service.createContactUs(req);
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
      final response = await _service.listContactUs(req);
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
      final response = await _service.updateContactUs(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
