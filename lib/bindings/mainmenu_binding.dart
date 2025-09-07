import 'package:get/get.dart';
import 'package:tes_flutter/controllers/mainmenu_controller.dart';

class MainmenuBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // inject homecontroller, historycontroller, profilecontroller
    Get.put(MainmenuController());
  }
}
