import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/components/dash_content_header.dart';
import 'package:measure_app/components/headerview.dart';
import 'package:measure_app/components/recent_assessments.dart';
import 'package:measure_app/components/recent_history.dart';
import 'package:measure_app/controllers/home_controller.dart';
import 'package:measure_app/utilities/styles.dart';

class Home extends StatelessWidget {
  Home({super.key});
  var homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView(
        children: [
          HeaderView(),
          const SizedBox(
            height: 25,
          ),
          recentHistory(),
          const SizedBox(
            height: 25,
          ),
          recentAssetments(),
        ],
      ),
    );
  }

  Column recentHistory() {
    return Column(
      children: [
        DashboardContentHeader(
          title: 'Recent History',
          onTap: () {
            print("On tapped");
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ...homeController.recentHistory.value.map(
          (e) {
            return RecentHistory(item: e);
          },
        ).toList()
      ],
    );
  }

  Column recentAssetments() {
    return Column(
      children: [
        DashboardContentHeader(
          title: 'Recent Assessments',
          onTap: () {
            print("On tapped");
          },
        ),
        const SizedBox(
          height: 10,
        ),
        ...homeController.recentHistory.value.map(
          (e) {
            return RecentAssessments(item: e);
          },
        ).toList()
      ],
    );
  }
}
