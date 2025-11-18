import 'package:broker_mobile/google/type/date.pb.dart';
import 'package:broker_mobile/proto/admpb/profile.pbgrpc.dart';
import '../server/grpc_client_factory.dart';

class ProfileService {
  final _service = GrpcClientFactory.create(ProfileServiceClient.new);


  Future<String> getDate(String type) async {
    final req = ReadProfileRequest();
    final response = await _service.readProfile(req);

    Date? dateValue;

    dateValue = type == "systemDate"
        ? response.profile.systemDate
        : response.profile.previousDate;

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

  Future<String> getPreviousDate() async {
    return await getDate('previousDate');
  }
}
