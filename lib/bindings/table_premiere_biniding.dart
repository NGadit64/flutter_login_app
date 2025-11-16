import 'package:get/get.dart';
import 'package:tes_flutter/controllers/calculator_controller.dart';
import 'package:tes_flutter/controllers/login_controller.dart';
import 'package:tes_flutter/controllers/table_premiere_controller.dart';

class TablePremiereBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
  //  Get.put(CalculatorController());
   Get.put(TablePremiereController());
  }
  }