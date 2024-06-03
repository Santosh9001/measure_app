import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DesignTheme {
  static final lightTheme = GoogleFonts.manropeTextTheme(
    const TextTheme(
      bodyLarge: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),

      bodyMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),

      ///Header title style
      headlineLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black),

      ///Tour title style
      headlineMedium: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),

      headlineSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),

      titleLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),

      titleMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),

      titleSmall: TextStyle(
          fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
    ),
  );
}

class DesignColors {
  static Color orange700 = const Color(0xFFFF5003);
  static Color gray600 = const Color(0xFF6C7278);
  static Color blue700 = const Color(0xFF003F70);
  static Color black600 = const Color(0xFF1A1C1E);

  static Color shadowGrey = const Color.fromARGB(135, 224, 223, 223);
  static Color lightPurple = const Color(0xFFEAEEFC);
  static Color lightOrange = const Color(0xFFFCF3EA);
}

class DesignDimensions {
  static dynamic roundedCorner = 100.w;
}
