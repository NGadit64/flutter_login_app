import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tes_flutter/controllers/example_controller.dart';

class ExampleMobile extends StatelessWidget {
  ExampleMobile({super.key});

final ExampleController controller = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("mobile")),
      body: Center(
        child: 
        Text("mobile"),
      ),
    );
  }
}