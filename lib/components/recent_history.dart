import 'package:flutter/material.dart';
import 'package:measure_app/components/common_components.dart';
import 'package:measure_app/utilities/styles.dart';

class RecentHistory extends StatelessWidget {
  dynamic item;
  RecentHistory({super.key, item});

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
                        color: DesignColors.lightPurple),
                    child: Row(
                      children: [
                        bodyLargeText(
                            "Z00.00", FontWeight.w900, DesignColors.blue700),
                        dotEllipse(DesignColors.blue700),
                        bodyLargeText("Physical Examination", FontWeight.w500,
                            DesignColors.blue700),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Image.asset("assets/images/circle_right.png"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Emerson Calzoni",
              style: DesignTheme.lightTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                bodyLargeText("Male", FontWeight.w700, DesignColors.gray600),
                dotEllipse(DesignColors.gray600),
                bodyLargeText(
                    "36 Years Old", FontWeight.w700, DesignColors.gray600),
                dotEllipse(DesignColors.gray600),
                bodyLargeText("84 Kg", FontWeight.w700, DesignColors.gray600),
                Flexible(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: bodyLargeText(
                        "02.03.2024.", FontWeight.w700, DesignColors.gray600),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
