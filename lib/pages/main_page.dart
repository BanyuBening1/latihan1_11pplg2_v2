import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/controllers/bottom_nav_controller.dart';
import 'package:latihan1_11pplg2_v2/routes/routes.dart';

class MainPage extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  final List<String> pages = [
    AppRoutes.calculatorPage,
    AppRoutes.footballPage,
    AppRoutes.profilePage,
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          onGenerateRoute: (settings) {
            return GetPageRoute(
              settings: settings,
              page: () => GetRouterOutlet.builder(
                routerDelegate: Get.rootDelegate,
                builder: (context, delegate, currentRoute) {
                  return GetRouterOutlet(
                    initialRoute: pages[controller.selectedIndex.value],
                    anchorRoute: '/',
                  );
                },
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.changeIndex(index);
            Get.toNamed(pages[index], id: 1);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Kalkulator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: "Football",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
