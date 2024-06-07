import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/components/button_component.dart';
import 'package:measure_app/controllers/assessment_controller.dart';
import 'package:measure_app/ui/questionnaire/questionnaire.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewAssessment extends StatelessWidget {
  NewAssessment({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AssessmentController());
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
          "New assessment",
          style: DesignTheme.lightTheme.bodyLarge!
              .copyWith(fontWeight: FontWeight.w800),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: SafeArea(
            child: Stack(
          children: [
            ListView(
              children: [
                Text(
                  "Cognitive status",
                  style: DesignTheme.lightTheme.bodySmall!.copyWith(
                      color: DesignColors.gray600, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Obx(
                  () => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(width: 1, color: DesignColors.gray200),
                    ),
                    child: DropdownButton(
                      value: controller.cognitiveStatus.value == ""
                          ? null
                          : controller.cognitiveStatus.value,
                      underline: const SizedBox(),
                      hint: Text(
                        "Select cognitive status",
                        style: DesignTheme.lightTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: DesignColors.gray600),
                      ),
                      isExpanded: true,
                      icon: Icon(
                        Icons.expand_more,
                        size: 25,
                        color: DesignColors.gray400,
                      ),
                      items:
                          controller.names.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(value: e, child: Text(e));
                      }).toList(),
                      onChanged: (String? value) {
                        controller.onCognitiveStatusChanged(value!);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Applicable measures",
                  style: DesignTheme.lightTheme.bodySmall!.copyWith(
                      color: DesignColors.gray600, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Obx(
                  () => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: controller.cognitiveStatus.value == ""
                          ? DesignColors.unselectedGray
                          : Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(width: 1, color: DesignColors.gray200),
                    ),
                    child: DropdownButton(
                      value: controller.applicableMeasures.value == ""
                          ? null
                          : controller.applicableMeasures.value,
                      underline: const SizedBox(),
                      hint: Text(
                        "Select applicable measures",
                        style: DesignTheme.lightTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: DesignColors.gray600),
                      ),
                      isExpanded: true,
                      icon: Icon(Icons.expand_more,
                          size: 25, color: DesignColors.gray400),
                      items:
                          controller.names.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(value: e, child: Text(e));
                      }).toList(),
                      onChanged: (String? value) {
                        controller.onApplicableMeasuresChanges(value!);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Patient",
                  style: DesignTheme.lightTheme.bodySmall!.copyWith(
                      color: DesignColors.gray600, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Obx(
                  () => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: controller.applicableMeasures.value == ""
                          ? DesignColors.unselectedGray
                          : Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(width: 1, color: DesignColors.gray200),
                    ),
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        controller.updateInput(value);
                      },
                      keyboardType: TextInputType.name,
                      controller: controller.patientEditingController.value,
                      style: DesignTheme.lightTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: DesignColors.black600,
                      ),
                      decoration: InputDecoration(
                          hintText: "Enter patient name or ID",
                          hintStyle: DesignTheme.lightTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: DesignColors.gray600,
                          ),
                          border: InputBorder.none),
                      onChanged: (value) {
                        controller.updateInput(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Obx(
              () => controller.nameValue.isEmpty
                  ? Positioned(
                      bottom: 10,
                      child: ButtonComponent(
                          onTap: () {
                            Get.to(Questionnaire());
                          },
                          title: "Start assessment",
                          visibility: false,
                          buttonColor: DesignColors.buttonGrey),
                    )
                  : Positioned(
                      bottom: 10,
                      child: ButtonComponent(
                          onTap: () {
                            Get.to(Questionnaire());
                          },
                          title: "Start assessment",
                          visibility: true,
                          buttonColor: DesignColors.black600),
                    ),
            ),
          ],
        )),
      ),
    );
  }
}
