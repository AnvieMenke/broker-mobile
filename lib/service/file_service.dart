import 'package:broker_mobile/proto/commonpb/file.pbgrpc.dart';
import 'package:broker_mobile/server/grpc_client_factory.dart';

class FileService {
  final _service = GrpcClientFactory.create(FileServiceClient.new);

  Future<AttachedFile> attachFile({
    required int linkId,
    required String linkType,
    required String tag,
    required File file,
  }) async {
    final request = AttachFileRequest()
      ..linkId = linkId
      ..linkType = linkType
      ..tag = tag
      ..file = file;

    try {
      final response = await _service.attachFile(request);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}