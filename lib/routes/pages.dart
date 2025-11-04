import 'package:get/get.dart';
import 'package:tes_flutter/bindings/Splashscreen_binding.dart';
import 'package:tes_flutter/bindings/calculator_binding.dart';
import 'package:tes_flutter/bindings/contact_binding.dart';
import 'package:tes_flutter/bindings/example_binding.dart';
import 'package:tes_flutter/bindings/football_player_binding.dart';
import 'package:tes_flutter/bindings/login_api_binding.dart';
import 'package:tes_flutter/bindings/login_binding.dart';
import 'package:tes_flutter/bindings/mainmenu_binding.dart';
import 'package:tes_flutter/example_feature/example_mobile.dart';
import 'package:tes_flutter/pages/example_page.dart';
import 'package:tes_flutter/example_feature/example_tablet.dart';
import 'package:tes_flutter/pages/calculator_page.dart';
import 'package:tes_flutter/pages/contact_page.dart';
import 'package:tes_flutter/pages/football_player.dart';
import 'package:tes_flutter/pages/home_page.dart';
import 'package:tes_flutter/pages/login_api_page.dart';
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
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage(),//binding: CalculatorBinding(),
    ),
    GetPage(name: AppRoutes.contactPage, page: () => ContactPage(), binding: ContactBinding()),
    GetPage(name: AppRoutes.examplePage, page: () => ExamplePage(), binding: ExampleBinding()),
    GetPage(name: AppRoutes.exampleTablet, page: () => ExampleTablet(), binding: ExampleBinding()),
    GetPage(name: AppRoutes.exampleMobile, page: () => ExampleMobile(), binding: ExampleBinding()),
    GetPage(name: AppRoutes.footballPage, page: ()=> FootballPlayer(), binding: FootballPLayerBinding()),
    GetPage(name: AppRoutes.loginApiPage, page: ()=> LoginAPIPage(), binding: LoginApiBinding()),
    GetPage(name: AppRoutes.homePage, page: ()=> HomePage()),
  ];
}
