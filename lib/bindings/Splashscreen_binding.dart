
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/splashscreen_controller.dart';


class SplashscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashscreenController());
  }
}