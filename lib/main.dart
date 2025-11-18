import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/auth_controller.dart';
import 'package:tes_flutter/routes/pages.dart';
import 'package:tes_flutter/routes/routes.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("🔔 Background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // Global AuthController
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

  bottomNavigationBarTheme: const BottomNavigationBarThemeData( //warna
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
  ),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 150, 127, 190),
        ),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.tablePremierePage, // langsung ke login
      getPages: AppPages.pages,
    );
  }
}
