import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/example_feature/football_player_mobile.dart';
import 'package:tes_flutter/example_feature/football_player_tablet.dart';
import '../controllers/football_player_controller.dart';


class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({super.key});

  final controller = Get.put(FootballPlayerController());
  final RxBool isMobile = true.obs;

  void updateLayout(BoxConstraints constraints) {
    isMobile.value = constraints.maxWidth < 600;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          updateLayout(constraints);
          return Obx(() => isMobile.value
              ? FootballPlayerMobile()
              : FootballPlayerTablet());
        },
      ),
    );
  }
}
