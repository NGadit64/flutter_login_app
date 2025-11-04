import 'package:get/get.dart';
import 'package:tes_flutter/controllers/example_controller.dart';

class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ExampleController());
  }
}
