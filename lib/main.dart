import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/routes/pages.dart';
import 'package:tes_flutter/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.mainMenuPage,
      getPages: AppPages.pages,
    );
  }
}
