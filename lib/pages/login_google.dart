import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/auth_controller.dart';

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>();

    return Scaffold(
      body: Center(
        child: Obx(() {
          if (authC.isLoading.value) {
            return const CircularProgressIndicator();
          } else {
            return ElevatedButton.icon(
              icon: Image.asset('assets/pohon.png', height: 24),
              label: const Text("Login dengan Google"),
              onPressed: () {
                authC.signInWithGoogle();
              },
            );
          }
        }),
      ),
    );
  }
}
