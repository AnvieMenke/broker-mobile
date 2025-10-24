import 'package:broker_mobile/proto/commonpb/lazylist.pbgrpc.dart';
import 'package:broker_mobile/proto/commonpb/list.pbgrpc.dart';
import 'package:broker_mobile/proto/commonpb/systemcode.pbgrpc.dart';
import 'package:broker_mobile/proto/commonpb/appconfig.pbgrpc.dart';
import 'package:broker_mobile/google/protobuf/empty.pb.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:protobuf/protobuf.dart';
import '../server/grpc_client.dart';
import '../server/auth_interceptor.dart';
import 'convert_service.dart';

class CommonService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  LazyListServiceClient _lazyClient() {
    final channel = _createChannel();

    final client = LazyListServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  ListServiceClient _listClient() {
    final channel = _createChannel();

    final client = ListServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  SystemCodeServiceClient _systemCodeClient() {
    final channel = _createChannel();

    final client = SystemCodeServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  AppConfigServiceClient _appConfigClient() {
    final channel = _createChannel();

    final client = AppConfigServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<List<String>> accessibleCorrespondent({
    required bool isAllStatus,
    required String type,
  }) async {
    final client = _lazyClient();
    final req = AccessibleRequest()
      ..isAllStatus = isAllStatus
      ..type = type;

    try {
      final response = await client.accessibleCorrespondent(req);
      return response.correspondents;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<AccountNo>> accessibleAccountNo(
      String key, correspondent, bool isAllStatus, String type) async {
    final client = _lazyClient();
    final req = AccessibleRequest()
      ..key = key
      ..correspondent = correspondent
      ..isAllStatus = isAllStatus
      ..type = type;

    try {
      final response = await client.accessibleAccountNo(req);
      return response.accountNos;
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
    final client = _lazyClient();
    final req = LazyAccountRequest()
      ..key = key
      ..limit = 50
      ..orderBy = orderBy
      ..colType = type
      ..isActive = isActive
      ..correspondent = correspondent;

    try {
      final response = await client.lazyAccount(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<BankAccount>> listBankAccount(
      String accountNo, correspondent, status) async {
    final client = _listClient();
    final req = ListBankAccountRequest()
      ..accountNo = accountNo
      ..correspondent = correspondent ?? ""
      ..status = status ?? "";

    try {
      final response = await client.listBankAccount(req);
      return response.bankAccounts;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<SystemCode>> listSystemCode(
      String type, subType, orderBy) async {
    final client = _systemCodeClient();
    final req = ListSystemCodeRequest()
      ..type = type
      ..subType = subType ?? ""
      ..orderBy = orderBy ?? "";

    try {
      final response = await client.listSystemCode(req);
      return response.systemCode;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<MasterAccountNo>> accessibleMasterAccountNo(
      String key, correspondent, bool isAllStatus) async {
    final client = _lazyClient();
    final req = AccessibleRequest()
      ..key = key
      ..correspondent = correspondent
      ..isAllStatus = isAllStatus;

    try {
      final response = await client.accessibleMasterAccountNo(req);
      return response.masterAccountNos;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<Rep>> accessibleRep(
      String key, correspondent, bool isAllStatus) async {
    final client = _lazyClient();
    final req = AccessibleRequest()
      ..key = key
      ..correspondent = correspondent
      ..isAllStatus = isAllStatus;

    try {
      final response = await client.accessibleRep(req);
      return response.reps;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<Branch>> accessibleBranch(
      String key, correspondent, bool isAllStatus) async {
    final client = _lazyClient();
    final req = AccessibleRequest()
      ..key = key
      ..correspondent = correspondent
      ..isAllStatus = isAllStatus;

    try {
      final response = await client.accessibleBranch(req);
      return response.branches;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListAdmEntryTypeResponse> listEntryType(String entryType, screenType,
      correspondent, accountNo, status, note) async {
    final client = _listClient();
    final req = ListAdmEntryTypeRequest()
      ..entryType = entryType
      ..correspondent = correspondent
      ..screenType = screenType
      ..correspondent = correspondent
      ..accountNo = accountNo
      ..status = status
      ..note = note;

    try {
      final response = await client.listAdmEntryType(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<PbList<String>> accessibleAccountName(
      String key, correspondent, bool isAllStatus) async {
    final client = _lazyClient();
    final req = AccessibleRequest()
      ..key = key
      ..correspondent = correspondent
      ..isAllStatus = isAllStatus;

    try {
      final response = await client.accessibleAccountName(req);
      return response.accountNames;
    } catch (e) {
      rethrow;
    }
  }

  Future<AppConfig> getAppConfig() async {
    final client = _appConfigClient();

    try {
      final response = await client.getAppConfig(Empty());
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<LazyLoadSecurityResponse> lazyLoadSecurities(
      String key, assetType, int limit, bool isActive) async {
    final client = _lazyClient();
    final req = LazyLoadSecurityRequest()
      ..key = key
      ..limit = ConvertService.safeInt(limit)
      ..assetType = assetType
      ..isActive = isActive;

    try {
      final response = await client.lazySecurity(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<ListPageResponse> listPage() async {
    final client = _listClient();
    final req = ListPageRequest()..limit = 50;

    try {
      final response = await client.listPage(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
