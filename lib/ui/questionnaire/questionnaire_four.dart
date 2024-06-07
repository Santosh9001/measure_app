import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:measure_app/controllers/questionnaire_controller.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_header.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuestionnaireFour extends StatelessWidget {
  const QuestionnaireFour({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<QuestionnaireController>();
    return Column(
      children: [
        const QuestionnaireHeader(
          title: "Identify the animals",
          description:
              "Please show the patient the following animals and check their response.",
        ),
        SizedBox(
          height: 4.h,
        ),
        for (var item in controller.animalLists)
          Column(
            children: [
              Divider(
                height: 0.5,
                color: DesignColors.gray200,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: DesignColors.gray400, width: 1)),
                      child: Image.asset("assets/images/home.png"),
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    Expanded(
                      child: Text(
                        item,
                        style: DesignTheme.lightTheme.titleLarge!
                            .copyWith(color: DesignColors.black600),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: GFToggle(
                          type: GFToggleType.ios,
                          enabledThumbColor: Colors.white,
                          disabledThumbColor: Colors.white,
                          enabledTrackColor: DesignColors.orange500,
                          disabledTrackColor: DesignColors.gray400,
                          value: false,
                          onChanged: (value) {
                            controller.updateSwitchData(item);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
      ],
    );
  }
}
