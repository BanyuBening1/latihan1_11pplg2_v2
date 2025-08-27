import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/controllers/main_controller.dart';

class MainPage extends StatelessWidget {
   MainPage({super.key});

  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      appBar: AppBar(title: Text("tes"),),
      body: mainController.pages[mainController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: mainController.changePage,
        currentIndex: mainController.selectedIndex.value,
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.sports), label: "Football"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
    ));
  }
}