import 'package:broker_mobile/proto/bankpb/account.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';

class BankAccountService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  AccountServiceClient _bankAccountService() {
    final channel = _createChannel();

    final client = AccountServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<ReadAccountResponse> readBankAccount(int bankId) async {
    final client = _bankAccountService();
    final req = ReadAccountRequest()..bankId = bankId;

    try {
      final response = await client.readAccount(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
