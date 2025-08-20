import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/pages/calculator_page.dart';
import 'package:tes_flutter/pages/football_player.dart';
import 'package:tes_flutter/pages/profile_page.dart';

class MainMenuController extends GetxController {
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }
}

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});
  final MainMenuController controller = Get.put(MainMenuController());

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPlayer(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Calculator",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: "Football",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
