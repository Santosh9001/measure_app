import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:measure_app/ui/dashboard.dart';
import 'package:measure_app/utilities/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Measure App',
          theme: ThemeData(
            scaffoldBackgroundColor: DesignColors.lightest,
            appBarTheme: AppBarTheme(backgroundColor: DesignColors.lightest),
            useMaterial3: true,
          ),
          home: Dashboard(),
        );
      },
    );
  }
}
