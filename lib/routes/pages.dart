import 'package:get/get.dart';
import 'package:tes_flutter/pages/calculator_page.dart';
import 'package:tes_flutter/pages/football_player.dart';
import 'package:tes_flutter/pages/edit_player_page.dart';
import 'package:tes_flutter/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballPage, page: () => FootballPlayer()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditPlayerPage()),
  ];
}
