import 'package:flutter/material.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

getTitleText(String value) {
  return Text(
    'Text',
    style: DesignTheme.lightTheme.titleLarge,
  );
}

getNetworkImage(String? url, {double height = 40.0, double width = 40.0}) {
  return Image.network(
    "$url",
    errorBuilder: (context, error, stackTrace) {
      return Image.asset(
        "assets/images/ic_pic.png",
        height: height,
        width: width,
      );
    },
  );
}

getBottomNavItems() {
  return [
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/images/home.png",
        color: DesignColors.gray600,
      ),
      activeIcon: Image.asset(
        "assets/images/home.png",
        color: DesignColors.orange700,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/images/patient.png",
        color: DesignColors.gray600,
      ),
      activeIcon: Image.asset(
        "assets/images/patient.png",
        color: DesignColors.orange700,
      ),
      label: 'Patients',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/images/history.png",
        color: DesignColors.gray600,
      ),
      activeIcon: Image.asset(
        "assets/images/history.png",
        color: DesignColors.orange700,
      ),
      label: 'History',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/images/settings.png",
        color: DesignColors.gray600,
      ),
      activeIcon: Image.asset(
        "assets/images/settings.png",
        color: DesignColors.orange700,
      ),
      label: 'Settings',
    ),
  ];
}

dotEllipse(Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 5.0,
        height: 5.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    ),
  );
}

bodyLargeText(String text, FontWeight weight, Color color) {
  return Text(
    text,
    style: DesignTheme.lightTheme.bodyLarge!
        .copyWith(fontWeight: weight, color: color),
  );
}

bodyLargeTextBlue(String text, FontWeight weight) {
  return Text(
    text,
    style: DesignTheme.lightTheme.bodyLarge!
        .copyWith(fontWeight: weight, color: DesignColors.blue700),
  );
}
