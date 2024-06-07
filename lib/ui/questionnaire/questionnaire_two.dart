import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:measure_app/controllers/questionnaire_controller.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_header.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class QuestionnaireTwo extends StatelessWidget {
  const QuestionnaireTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<QuestionnaireController>();
    return Column(
      children: [
        const QuestionnaireHeader(
          title: "Story ”Jill went to the shop”",
          description:
              "Jill went to the shop to buy candies. Afterwards instead of walking to home, she took a cab.",
        ),
        Text(
          "Show all",
          style: DesignTheme.lightTheme.titleMedium!
              .copyWith(color: DesignColors.orange500),
        ),
        SizedBox(
          height: 5.h,
        ),
        for (var item in controller.assessmentTwoItems)
          Obx(
            () => GestureDetector(
              onTap: () {
                controller.updateAssmentTwoIndex(item);
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(
                        color: controller.selectedAssements.contains(item)
                            ? DesignColors.orange500
                            : DesignColors.grayBorder,
                        width: 1),
                  ),
                  child: Row(
                    children: [
                      RoundCheckBox(
                        isChecked: controller.selectedAssements.contains(item)
                            ? true
                            : false,
                        onTap: (selected) {},
                        size: 25,
                        checkedWidget: const Icon(
                          Icons.check,
                          size: 15,
                          color: Colors.white,
                        ),
                        checkedColor: DesignColors.orange500,
                        borderColor: controller.selectedAssements.contains(item)
                            ? DesignColors.orange500
                            : DesignColors.gray400,
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Text(
                        item,
                        style: DesignTheme.lightTheme.titleLarge!
                            .copyWith(color: DesignColors.black600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
