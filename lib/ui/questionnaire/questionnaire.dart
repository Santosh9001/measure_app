import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/components/assessment_indicator.dart';
import 'package:measure_app/components/button_component.dart';
import 'package:measure_app/controllers/questionnaire_controller.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Questionnaire extends StatelessWidget {
  Questionnaire({super.key});
  final QuestionnaireController controller = Get.put(QuestionnaireController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.chevron_left,
            color: DesignColors.black600,
          ),
        ),
        title: Text(
          "Assessment",
          style: DesignTheme.lightTheme.bodyLarge!
              .copyWith(fontWeight: FontWeight.w800),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset("assets/images/more.png"),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Stack(
            children: [
              AssessmentIndicator(),
              ListView(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Obx(() => controller.questionnaireComponent())
                ],
              ),
              Positioned(
                bottom: 10,
                right: 1,
                left: 1,
                child: Obx(
                  () => Column(
                    children: [
                      if (controller.currentIndex.value == 3)
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${controller.selectedAnimals.length} correct",
                            style: DesignTheme.lightTheme.titleMedium!.copyWith(
                                color: DesignColors.orange500,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Visibility(
                            visible: controller.currentIndex.value >= 1
                                ? true
                                : false,
                            child: GestureDetector(
                              onTap: () {
                                controller.updateAssessmentIndex(
                                    controller.currentIndex.value - 1);
                              },
                              child: Container(
                                width: controller.currentIndex.value == 4
                                    ? MediaQuery.sizeOf(context).width * 0.35
                                    : MediaQuery.sizeOf(context).width * 0.25,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 13,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    border: Border.all(
                                        color: DesignColors.gray400, width: 1),
                                    color: Colors.white),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: controller.currentIndex.value == 4
                                      ? Text(
                                          "Back",
                                          style: DesignTheme
                                              .lightTheme.titleLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: DesignColors.black600),
                                        )
                                      : Icon(
                                          Icons.arrow_back_ios_new,
                                          size: 20,
                                          color: DesignColors.gray400,
                                        ),
                                ),
                              ),
                            ),
                          ),
                          Obx(
                            () => ButtonComponent(
                                onTap: () {
                                  if (controller.currentIndex.value == 4) {
                                    print("Print");
                                  } else {
                                    controller.updateAssessmentIndex(
                                        controller.currentIndex.value + 1);
                                  }
                                },
                                title: controller.currentIndex.value == 3
                                    ? "Finish"
                                    : controller.currentIndex.value == 4
                                        ? "Print"
                                        : "Continue",
                                visibility: true,
                                buttonColor: DesignColors.black600,
                                width: controller.currentIndex.value == 0
                                    ? 0.9
                                    : controller.currentIndex.value == 4
                                        ? 0.4
                                        : 0.55),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
