import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tes_flutter/routes/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("username"); // hapus username
    await prefs.remove("password"); // hapus pw
    Get.offAllNamed(AppRoutes.SplashscreenPage); // balik ke splash
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 100, color: Colors.teal),
            const SizedBox(height: 20),
            const Text("Username: admin"),
            const Text("Email: admin@example.com"),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: logout, child: const Text("Logout")),
          ],
        ),
      ),
    );
  }
}
