import 'package:broker_mobile/proto/bankpb/account.pbgrpc.dart';
import '../server/grpc_client_factory.dart';

class BankAccountService {
  final _service = GrpcClientFactory.create(AccountServiceClient.new);

  Future<ReadAccountResponse> readBankAccount(int bankId) async {
    final req = ReadAccountRequest()..bankId = bankId;

    try {
      final response = await _service.readAccount(req);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
