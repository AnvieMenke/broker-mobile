import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  static Future<void> load() async {
    await dotenv.load(); // Load the .env file
  }

  static String get grpcEndpoint => dotenv.env['BROKER_GRPC_ENDPOINT'] ?? '';
  static String get grpcClientId => dotenv.env['BROKER_GRPC_CLIENT_ID'] ?? '';
  static String get environment => dotenv.env['ENVIRONMENT'] ?? 'development';

// Add more getters as needed...
}
