import 'package:broker_mobile/proto_support/support/ai/chat/v1/chat.pbgrpc.dart';
import 'package:file_picker/file_picker.dart';

import '../proto/commonpb/file.pb.dart';
import '../proto/commonpb/lazylist.pbgrpc.dart';
import '../server/grpc_client_factory.dart';
import '../server/support_grpc_client_factory.dart';
import '../session/session.dart';
import 'file_service.dart';

class ChatService {
  final _service = SupportGrpcClientFactory.create(ChatServiceClient.new);
  final _lazyService = GrpcClientFactory.create(LazyListServiceClient.new);
  final _fileService = FileService();

  Future<SendMessageResponse> sendMessage({
    required String content,
    required String mode,
    int? sessionId,
    String pageComponent = "",
  }) async {
    final user = sessionManager.user!;

    final request = SendMessageRequest()
      ..application = "Mobile"
      ..content = content
      ..mode = mode
      ..userId = user.userId
      ..userType = user.userType
      ..roleId = user.roleId
      ..pageComponent = pageComponent
      ..includeSystemDetails = false;

    if (sessionId != null) {
      request.sessionId = sessionId;
    }
    try {
      final response = await _service.sendMessage(request);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<AttachedFile> uploadClientAccount({
    required String accountNo,
    required String tag,
    required PlatformFile pickedFile,
  }) async {
    if (tag.trim().isEmpty) {
      throw Exception("Tag is required");
    }

    if (accountNo.trim().isEmpty) {
      throw Exception("Account number is required");
    }

    if (pickedFile.bytes == null) {
      throw Exception("File is required");
    }

    final accountsResult = await _lazyService.lazyAccount(
      LazyAccountRequest()
        ..orderBy = "account_no"
        ..colType = "account_no"
        ..key = accountNo,
    );

    final account = accountsResult.accounts.firstWhere(
      (e) => e.accountNo.trim().toLowerCase() == accountNo.trim().toLowerCase(),
      orElse: () => throw Exception("Account not found or access denied"),
    );

    final file = File()
      ..fileBytes = pickedFile.bytes!
      ..fileName = pickedFile.name
      ..mimeType = pickedFile.extension ?? "";

    return await _fileService.attachFile(
      linkId: account.accountId,
      linkType: "ClientAccount",
      tag: tag,
      file: file,
    );
  }
}
