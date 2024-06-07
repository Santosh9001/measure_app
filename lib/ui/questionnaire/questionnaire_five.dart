import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_app/controllers/questionnaire_controller.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class QuestionnaireFive extends StatelessWidget {
  const QuestionnaireFive({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<QuestionnaireController>();
    return Column(
      children: [
        Text(
          "Confirm the results",
          style: DesignTheme.lightTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: DesignColors.gray200, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: FittedBox(
                  child: SfCircularChart(
                    series: <CircularSeries>[
                      DoughnutSeries<ChartData, String>(
                          innerRadius: '70%',
                          dataSource: controller.chartData,
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: DesignColors.gray200,
                  height: 1,
                ),
              ),
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Question $i",
                        style: DesignTheme.lightTheme.titleMedium,
                      ),
                      Text("Correct",
                          style: DesignTheme.lightTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w700,
                              color: DesignColors.greenText)),
                    ],
                  ),
                ),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Show all",
                  style: DesignTheme.lightTheme.titleMedium!.copyWith(
                      color: DesignColors.orange500, fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
