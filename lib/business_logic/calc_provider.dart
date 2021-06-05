

import 'package:flutter/foundation.dart';
import 'package:grpc_client/business_logic/calc_service.dart';
class CalculatorProvider extends ChangeNotifier{


  Future<void> calculator() async {
    await CalculatorService.calculator();

  }


}