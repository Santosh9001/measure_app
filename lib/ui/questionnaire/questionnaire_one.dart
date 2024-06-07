import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/controllers/questionnaire_controller.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_header.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuestionnaireOne extends StatelessWidget {
  const QuestionnaireOne({super.key});
  @override
  Widget build(BuildContext context) {
    var contoller = Get.find<QuestionnaireController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const QuestionnaireHeader(
          title: "How many fingers can you see?",
          description:
              "Please show the patient a certain amount of fingers and follow their reaction.",
        ),
        SizedBox(
          height: 8.h,
        ),
        Obx(
          () => GestureDetector(
            onTap: () {
              contoller.updateFingersData(true);
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                      color: contoller.fingersCheck.value
                          ? DesignColors.orange500
                          : DesignColors.grayBorder,
                      width: 1),
                ),
                child: Text(
                  "Correct",
                  style: DesignTheme.lightTheme.titleLarge!
                      .copyWith(color: DesignColors.black600),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Obx(
          () => GestureDetector(
            onTap: () {
              contoller.updateFingersData(false);
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                      color: !contoller.fingersCheck.value
                          ? DesignColors.orange500
                          : DesignColors.grayBorder,
                      width: 1),
                ),
                child: Text(
                  "Incorrect",
                  style: DesignTheme.lightTheme.titleLarge!
                      .copyWith(color: DesignColors.black600),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
