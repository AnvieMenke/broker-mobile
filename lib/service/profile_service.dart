import 'package:broker_mobile/proto/admpb/profile.pbgrpc.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';

class ProfileService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  ProfileServiceClient profileService() {
    final channel = _createChannel();

    final client = ProfileServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  late final svc = profileService();

  Future<String> getDate(String type) async {
    final req = ReadProfileRequest();
    final response = await svc.readProfile(req);

    final dateValue = response.profile.systemDate;

    final year = dateValue.year;
    final month = dateValue.month;
    final day = dateValue.day;

    final m = month.toString().padLeft(2, '0');
    final d = day.toString().padLeft(2, '0');

    return "$year-$m-$d";
  }

  Future<String> getSystemDate() async {
    return await getDate('systemDate');
  }
}
