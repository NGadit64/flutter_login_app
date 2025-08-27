import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/fragments/history_fragments.dart';
import 'package:tes_flutter/fragments/home_fragments.dart';
import 'package:tes_flutter/fragments/profil_fragments.dart';

class MainmenuController extends GetxController{

  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    HomeFragment(), 
    HistoryFragment(), 
    ProfileFragment()
  ];

  void changePage(int index){
    selectedIndex.value = index;
  }

}