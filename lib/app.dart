import 'package:aqua_pure/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/presentations/screens/AlramScreen.dart';
import 'features/presentations/screens/Dashboard.dart';
import 'features/presentations/screens/Data_analysis.dart';
import 'features/presentations/screens/General_purpose.dart';
import 'features/presentations/screens/Purify_manager.dart';
import 'features/presentations/screens/RealData.dart';
import 'features/presentations/screens/manual_control.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: ManualControl(),

    );
  }
}
