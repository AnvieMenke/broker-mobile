import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  static Future<void> load() async {
    await dotenv.load(fileName: ".env");
  }

  static String get grpcWebEndpoint =>
      dotenv.env['BROKER_GRPC_WEB_ENDPOINT'] ?? '';
  static String get grpcEndpoint => dotenv.env['BROKER_GRPC_ENDPOINT'] ?? '';
  static String get grpcClientId => dotenv.env['BROKER_GRPC_CLIENT_ID'] ?? '';
  static String get environment => dotenv.env['ENVIRONMENT'] ?? 'development';
  static int get idleTimeOutMinutes {
    final value = dotenv.env['IDLE_TIME_OUT_MINUTES'];
    if (value == null || value.trim().isEmpty) return 5;

    final parsed = int.tryParse(value);
    return parsed ?? 5;
  }
}
