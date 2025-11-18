import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/fragments/history_fragments.dart';
import 'package:tes_flutter/fragments/home_fragments.dart';
import 'package:tes_flutter/fragments/notif_fragment.dart';
import 'package:tes_flutter/fragments/profil_fragments.dart';
import 'package:tes_flutter/fragments/table_fragments.dart';
import 'package:tes_flutter/pages/bookmark_page.dart';

class MainmenuController extends GetxController{

  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    HomeFragment(), 
    TableFragments(),
    HistoryFragment(), 
     // BookmarkPage(), 
    NotifFragment(),
    ProfileFragment(),
  ];

  void changePage(int index){
    selectedIndex.value = index;
  }

}