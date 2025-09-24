import 'package:get/get.dart';
import 'package:tes_flutter/bindings/Splashscreen_binding.dart';
import 'package:tes_flutter/bindings/calculator_binding.dart';
import 'package:tes_flutter/bindings/login_binding.dart';
import 'package:tes_flutter/bindings/mainmenu_binding.dart';
import 'package:tes_flutter/pages/calculator_page.dart';
import 'package:tes_flutter/pages/login_page.dart';
import 'package:tes_flutter/pages/mainmenu_page.dart';
import 'package:tes_flutter/pages/edit_player_page.dart';
import 'package:tes_flutter/pages/splashscreen_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.mainMenuPage, page: ()=> MainmenuPage(), binding: MainmenuBinding()),
    GetPage(name: AppRoutes.SplashscreenPage, page: ()=> SplashscreenPage(), binding: SplashscreenBinding()),
    GetPage(name: AppRoutes.loginPage, page: ()=> LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditPlayerPage()),
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage(),
     //binding: CalculatorBinding(),
     ),
  ];
}
