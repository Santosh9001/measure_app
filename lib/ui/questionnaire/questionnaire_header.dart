import 'package:flutter/material.dart';
import 'package:measure_app/utilities/styles.dart';

class QuestionnaireHeader extends StatelessWidget {
  final String title;
  final String description;

  const QuestionnaireHeader(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: DesignTheme.lightTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50, top: 20),
          child: Text(
            textAlign: TextAlign.center,
            description,
            style: DesignTheme.lightTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500, color: DesignColors.gray600),
          ),
        ),
      ],
    );
  }
}
