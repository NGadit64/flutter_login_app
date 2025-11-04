import 'package:get/get.dart';

import 'package:tes_flutter/controllers/login_api_controller.dart';

class LoginApiBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(LoginAPIController());
  }
  

}