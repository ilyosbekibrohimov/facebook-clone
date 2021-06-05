import 'package:grpc/grpc.dart';
import 'package:grpc_client/generated_files/calculator.pbgrpc.dart';

class CalculatorService {


  static Future<void> squareRoot() async {
    final clientChannel = ClientChannel('192.168.0.101', port: 50051, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    final stub = CalculatorClient(clientChannel);
    try {
      final response = await stub.squareRoot(Number()
        ..value = 17);

      print(response.value);
    } catch (e) {
      print(e);
    } finally {
      await clientChannel.shutdown();
    }
  }
  static Future<void> calculator() async {
    final clientChannel = ClientChannel('192.168.0.101', port: 50051, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    final stub = CalculatorClient(clientChannel);

    try {
      final response = await stub.calculator(MyCalc_Request()
        ..number1 = 15.0
        ..number2 = 25.0

      );
      print(response.result);
    } catch (e) {
      print(e);
    }
  }
}
