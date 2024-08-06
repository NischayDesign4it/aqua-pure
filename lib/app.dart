import 'package:aqua_pure/features/presentations/screens/authentication/StartPage.dart';
import 'package:aqua_pure/features/presentations/screens/authentication/loginPage.dart';
import 'package:aqua_pure/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: StartPage(),

    );
  }
}
