import 'package:broker_mobile/proto/commonpb/lazylist.pbgrpc.dart';
import 'package:broker_mobile/proto/commonpb/list.pbgrpc.dart';
import 'package:broker_mobile/proto/commonpb/systemcode.pbgrpc.dart';
import 'package:broker_mobile/proto/commonpb/appconfig.pbgrpc.dart';
import 'package:protobuf/protobuf.dart';
import '../server/grpc_client_factory.dart';
import 'convert_service.dart';

class CommonService {
  final _lazyService = GrpcClientFactory.create(LazyListServiceClient.new);
  final _listService = GrpcClientFactory.create(ListServiceClient.new);
  final _systemCodeService =
      GrpcClientFactory.create(SystemCodeServiceClient.new);
  final _appConfigService =
      GrpcClientFactory.create(AppConfigServiceClient.new);

  Future<List<String>> accessibleCorrespondent({
    required bool isAllStatus,
    required String type,
  }) async {
    final req = AccessibleRequest()
      ..isAllStatus = isAllStatus
      ..type = type;

    try {
      final response = await _lazyService.accessibleCorrespondent(req);
      return response.correspondents;
    } catch (e) {
      rethrow;
    }
  }

  Future<LazyAccountResponse> lazyLoadAccount(
    String key,
    String orderBy,
    String type,
    bool isActive,
    String correspondent,
  ) async {
    final req = LazyAccountRequest()
      ..key = key
      ..limit = 50
      ..orderBy = orderBy
      ..colType = type
      ..isActive = isActive
      ..correspondent = correspondent;

    try {
      final response = await _lazyService.lazyAccount(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<LazyRepAdvisorResponse> lazyRepAdvisor(
      String key,
      String orderBy,
      String type,
      bool isActive,
      String correspondent,
      ) async {
    final req = LazyAccountRequest()
      ..key = key
      ..limit = 50
      ..orderBy = orderBy
      ..colType = type
      ..isActive = isActive
      ..correspondent = correspondent;

    try {
      final response = await _lazyService.lazyRepAdvisor(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<BankAccount>> listBankAccount(
      String accountNo, correspondent, status) async {
    final req = ListBankAccountRequest()
      ..accountNo = accountNo
      ..correspondent = correspondent ?? ""
      ..status = status ?? "";

    try {
      final response = await _listService.listBankAccount(req);
      return response.bankAccounts;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<SystemCode>> listSystemCode(
      String type, subType, orderBy) async {
    final req = ListSystemCodeRequest()
      ..type = type
      ..subType = subType ?? ""
      ..orderBy = orderBy ?? "";

    try {
      final response = await _systemCodeService.listSystemCode(req);
      return response.systemCode;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListAdmEntryTypeResponse> listEntryType(String entryType, screenType,
      correspondent, accountNo, status, note) async {
    final req = ListAdmEntryTypeRequest()
      ..entryType = entryType
      ..correspondent = correspondent
      ..screenType = screenType
      ..correspondent = correspondent
      ..accountNo = accountNo
      ..status = status
      ..note = note;

    try {
      final response = await _listService.listAdmEntryType(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<MobileAppConfig> getMobileAppConfig(String correspondent) async {
    final req = MobileAppConfigRequest()..correspondent = correspondent;

    try {
      final response = await _appConfigService.getMobileAppConfig(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<LazyLoadSecurityResponse> lazyLoadSecurities(
      String key, assetType, int limit, bool isActive) async {
    final req = LazyLoadSecurityRequest()
      ..key = key
      ..limit = ConvertService.safeInt(limit)
      ..assetType = assetType
      ..isActive = isActive;

    try {
      final response = await _lazyService.lazySecurity(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListPageResponse> listPage() async {
    final req = ListPageRequest()..limit = 50;

    try {
      final response = await _listService.listPage(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
