import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/splashscreen_controller.dart';
import 'package:tes_flutter/widget/widget_textfield.dart';

import '../controllers/splashscreen_controller.dart' show SplashscreenController;

class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});

 final controller = Get.find<SplashscreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Center(
      child:
      Container(
        child: 
        Text("Username: Aditya"),
      )
    )
    );
  }
}
