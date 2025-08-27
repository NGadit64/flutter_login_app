import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/mainmenu_controller.dart';
import 'package:tes_flutter/fragments/history_fragments.dart';
import 'package:tes_flutter/fragments/home_fragments.dart';
import 'package:tes_flutter/fragments/profil_fragments.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  MainmenuController mainmenuController = Get.put(MainmenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      appBar: AppBar(title: Text("My Menu Example"),),
      body: mainmenuController.pages[mainmenuController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: mainmenuController.changePage,
        currentIndex: mainmenuController.selectedIndex.value,
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined) , label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.history) , label: "History"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined) , label: "Profile"),
      ]),
    ));
  }
}