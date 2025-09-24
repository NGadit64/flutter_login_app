import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tes_flutter/routes/routes.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login() async {
    if (usernameController.text.toString() == "admin" &&
        passwordController.text.toString() == "admin123") {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString("username", usernameController.text.toString());
      Get.offAllNamed(AppRoutes.mainMenuPage);
        }else{
          Get.snackbar("error","Username atau password salah");
        }
    }
  }

