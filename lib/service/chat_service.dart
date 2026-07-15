import 'package:broker_mobile/proto/support/ai/chat/v1/chat.pbgrpc.dart';

import '../server/support_grpc_client_factory.dart';
import '../session/session.dart';

class ChatService {
  final _service = SupportGrpcClientFactory.create(ChatServiceClient.new);

  Future<SendMessageResponse> sendMessage({
    required String content,
    required String mode,
    int? sessionId,
    String pageComponent = "",
  }) async {
    final user = sessionManager.user!;

    final request = SendMessageRequest()
      ..application = "Wealth Management"
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
}
