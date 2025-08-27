
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/pages/calculator_pages.dart';
import 'package:latihan1_11pplg2_v2/pages/football_page.dart';
import 'package:latihan1_11pplg2_v2/pages/profile.dart';

class MainController extends GetxController {
  var selectedIndex = 0.obs;

  final pages = [
    CalculatorPage(),
    FootballPlayer(),
    ProfilePage(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
