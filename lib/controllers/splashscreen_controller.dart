import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tes_flutter/pages/mainmenu_page.dart';
import 'package:tes_flutter/routes/routes.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checklogin();
  }

  checklogin() async {
    await Future.delayed(Duration(seconds: 3));
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString("username") != null) {
      Get.offAllNamed(AppRoutes.mainMenuPage);
    } else {
      Get.offAllNamed(AppRoutes.loginPage);
    }
  }
}
