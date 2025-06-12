import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  static Future<void> load() async {
    await dotenv.load(); // Load the .env file
  }

  static String get grpcEndpoint => dotenv.env['GRPC_ENDPOINT'] ?? '';
  static String get grpcClientId => dotenv.env['GRPC_CLIENT_ID'] ?? '2d5125d3-17a4-4492-8423-30243597e7b8.client.com';
  static String get environment => dotenv.env['ENVIRONMENT'] ?? 'development';

// Add more getters as needed...
}
