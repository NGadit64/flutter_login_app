import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../routes/routes.dart';

class LoginAPIController extends GetxController {
  final usernameC = TextEditingController();
  final passwordC = TextEditingController();
  var isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;

    try {
      final url = Uri.parse('https://mediadwi.com/api/latihan/login');
      final response = await http.post(
        url,
        body: {
          'username': usernameC.text,
          'password': passwordC.text,
        },
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        // tampilkan respon mentah dari server
        Get.snackbar('Server', data['message'] ?? 'Tidak ada pesan',
            snackPosition: SnackPosition.BOTTOM);

        // kalau login sukses, navigasi ke main menu
        if (data['status'] == true) {
          // bisa simpan token ke shared preferences kalau mau
          Get.offAllNamed(AppRoutes.mainMenuPage);
        }
      } else {
        Get.snackbar('Error', 'Server error: ${response.statusCode}',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}
