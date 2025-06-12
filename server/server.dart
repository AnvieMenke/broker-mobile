import 'dart:developer';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';

Future<void> startServer() async {
  await dotenv.load(); // Load .env file

  final portStr = dotenv.env['GRPC_ENDPOINT'] ?? '50051';
  final port = int.tryParse(portStr) ?? 50051;

  final server = Server([
    // Your gRPC service handlers go here
  ]);

  await server.serve(port: port);
  log('✅ Server listening on port $port');
}
