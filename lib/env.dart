import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  static Future<void> load() async {
    await dotenv.load(fileName: ".env");
  }

  static String get grpcWebEndpoint => dotenv.env['BROKER_GRPC_WEB_ENDPOINT'] ?? '';
  static String get grpcEndpoint => dotenv.env['BROKER_GRPC_ENDPOINT'] ?? '';
  static String get grpcClientId => dotenv.env['BROKER_GRPC_CLIENT_ID'] ?? '';
  static String get environment => dotenv.env['ENVIRONMENT'] ?? 'development';

}
