import 'package:get/get.dart';
import 'package:tes_flutter/controllers/calculator_controller.dart';
import 'package:tes_flutter/controllers/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
  //  Get.put(CalculatorController());
   Get.put(LoginController());
  }
  }