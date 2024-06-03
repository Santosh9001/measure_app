import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/components/common_components.dart';
import 'package:measure_app/controllers/home_controller.dart';
import 'package:measure_app/ui/dashboard/home.dart';
import 'package:measure_app/utilities/styles.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Obx(() => 
           homeController.getSelectedTab())),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (value) {
            homeController.updateIndex(value);
          },
          currentIndex: homeController.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: getBottomNavItems(),
          selectedLabelStyle: DesignTheme.lightTheme.bodySmall!
              .copyWith(color: DesignColors.orange700),
          showSelectedLabels: true,
          selectedItemColor: DesignColors.orange700,
        ),
      ),
    );
  }
}
