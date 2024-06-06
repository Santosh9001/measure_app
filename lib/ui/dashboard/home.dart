import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/components/button_component.dart';
import 'package:measure_app/components/dash_content_header.dart';
import 'package:measure_app/components/headerview.dart';
import 'package:measure_app/components/recent_assessments.dart';
import 'package:measure_app/components/recent_history.dart';
import 'package:measure_app/controllers/home_controller.dart';
import 'package:measure_app/ui/new_assessment.dart';
import 'package:measure_app/utilities/styles.dart';

class Home extends StatelessWidget {
  Home({super.key});
  var homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Stack(
        children: [
          ListView(
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
          Positioned(
              bottom: 5,
              child: ButtonComponent(
                onTap: () {
                  Get.to(NewAssessment());
                },
                title: "+ New Assessment",
                visibility: true,
                buttonColor: DesignColors.black600,
              ))
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
