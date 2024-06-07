import 'package:flutter/material.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_header.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuestionnaireThree extends StatelessWidget {
  const QuestionnaireThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Recall question:",
          style: DesignTheme.lightTheme.titleMedium!
              .copyWith(color: DesignColors.gray600),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          "Read the sentences",
          style: DesignTheme.lightTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            """Proin ultrices fringilla et scelerisque sed duis massa nulla. Eget arcu urna ipsum in neque ornare. Integer placerat rhoncus purus est ut ultrices. Pharetra amet faucibus tincidunt mattis in enim. Duis pharetra integer adipiscing quisque elementum lacus porta. Sit diam aliquam quisque purus tortor.""",
            style: DesignTheme.lightTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500, color: DesignColors.gray600),
          ),
        ),
      ],
    );
  }
}
