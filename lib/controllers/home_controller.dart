
import 'package:get/get.dart';
import 'package:measure_app/ui/dashboard/history.dart';
import 'package:measure_app/ui/dashboard/home.dart';
import 'package:measure_app/ui/dashboard/patient.dart';
import 'package:measure_app/ui/dashboard/settings.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  var recentHistory = <dynamic>[4].obs;

  void updateIndex(int value) {
    selectedIndex.value = value;
  }

  getSelectedTab() {
    if (selectedIndex.value == 0) {
      return Home();
    } else if (selectedIndex.value == 1) {
      return const Patient();
    } else if (selectedIndex.value == 2) {
      return const History();
    } else {
      return const SettingsView();
    }
  }
}
