import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:measure_app/utilities/styles.dart';

class ButtonComponent extends StatelessWidget {
  Function() onTap;
  String title;
  bool visibility;
  Color buttonColor;
  ButtonComponent(
      {super.key,
      required this.onTap,
      required this.title,
      required this.visibility,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: visibility,
          child: Positioned(
            bottom: 0,
            left: 5,
            right: 5,
            child: Opacity(
              opacity: 0.5,
              child: Container(
                height: 38,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    backgroundBlendMode: BlendMode.color,
                    gradient:
                        LinearGradient(colors: DesignColors.buttonGradient)),
              ).blurred(
                  blur: 5,
                  colorOpacity: 0.5,
                  borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(20))),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(25)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: DesignTheme.lightTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
