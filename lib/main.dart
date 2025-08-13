import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/login_page.dart';
import 'package:tes_flutter/pages/calculator_page.dart';
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
      ),
      initialRoute: AppRoutes.calculatorPage,
      getPages: AppPages.pages,
    );
  }
}
