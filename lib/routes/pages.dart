import 'package:get/get.dart';
import 'package:tes_flutter/pages/mainmenu_page.dart';
import 'package:tes_flutter/pages/edit_player_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.mainMenuPage, page: ()=> MainmenuPage()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditPlayerPage()),
  ];
}
