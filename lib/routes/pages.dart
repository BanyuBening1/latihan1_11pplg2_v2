import 'package:get/route_manager.dart';
import 'package:latihan1_11pplg2_v2/pages/calculator_pages.dart';
import 'package:latihan1_11pplg2_v2/pages/edit_Football_Player_Page.dart';
import 'package:latihan1_11pplg2_v2/pages/football_page.dart';
import 'package:latihan1_11pplg2_v2/pages/main_page.dart';

import 'package:latihan1_11pplg2_v2/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.mainPage, page: () => MainPage()),
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballPage, page: () => FootballPlayer()),
    GetPage(name: AppRoutes.editPage, page: () => EditFootballPlayerPage()),
  ];
}
