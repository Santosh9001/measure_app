import 'package:flutter/material.dart';
import 'package:measure_app/components/common_components.dart';
import 'package:measure_app/utilities/styles.dart';

class RecentAssessments extends StatelessWidget {
  dynamic item;
  RecentAssessments({super.key, item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: DesignColors.shadowGrey,
                blurRadius: 2,
                offset: const Offset(1, 1))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: DesignColors.lightOrange),
                    child: Row(
                      children: [
                        bodyLargeText("COGNITION", FontWeight.w900,
                            DesignColors.orange700),
                        dotEllipse(DesignColors.orange700),
                        bodyLargeText(
                            "SLUMS", FontWeight.w500, DesignColors.orange700),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "assets/images/circle_right.png",
                  color: DesignColors.orange700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
