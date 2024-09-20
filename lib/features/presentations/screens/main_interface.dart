import 'package:flutter/material.dart';

class MainInterfaceScreen extends StatefulWidget {
  const MainInterfaceScreen({super.key});

  @override
  State<MainInterfaceScreen> createState() => _MainInterfaceScreenState();
}

class _MainInterfaceScreenState extends State<MainInterfaceScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/HMIR.png",
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
        cacheWidth: null,
        cacheHeight: null,

      ),
    );
  }
}

