import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/example_controller.dart';
import 'package:tes_flutter/example_feature/example_mobile.dart';
import 'package:tes_flutter/example_feature/example_tablet.dart';

class ExamplePage extends StatelessWidget {
 ExamplePage({super.key});

final ExampleController controller = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.updateLayout(constraints);
          return Obx(()=> controller.isMobile.value ? ExampleMobile() : ExampleTablet());
        },
      ),
    );
  }
}
