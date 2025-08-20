import 'package:get/get.dart';
import 'package:tes_flutter/pages/calculator_page.dart';
import 'package:tes_flutter/pages/football_player.dart';
import 'package:tes_flutter/pages/profile_page.dart';
import 'package:tes_flutter/pages/main_menu_page.dart';
import 'package:tes_flutter/pages/edit_player_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.mainMenu, page: () => MainMenuPage()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditPlayerPage()),
  ];
}
