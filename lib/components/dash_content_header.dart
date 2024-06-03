import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:measure_app/utilities/styles.dart';

class DashboardContentHeader extends StatelessWidget {
  final String title;
  final Function() onTap;
  const DashboardContentHeader(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: DesignTheme.lightTheme.titleLarge!,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'See more',
                  style: DesignTheme.lightTheme.titleSmall!
                      .copyWith(color: DesignColors.gray600),
                ),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward,
                        color: DesignColors.gray600,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
