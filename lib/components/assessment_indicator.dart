import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/controllers/questionnaire_controller.dart';
import 'package:measure_app/utilities/styles.dart';

class AssessmentIndicator extends StatelessWidget {
  AssessmentIndicator({super.key});
  var controller = Get.find<QuestionnaireController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 5; i++)
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  color: controller.currentIndex.value >= i
                      ? DesignColors.black600
                      : DesignColors.gray200,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
