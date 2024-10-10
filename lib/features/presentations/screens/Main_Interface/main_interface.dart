import 'package:aqua_pure/features/presentations/screens/purifier_manager/PurifyManager.dart';
import 'package:aqua_pure/features/presentations/screens/purifier_manager/Purify_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';

class MainInterfaceScreen extends StatefulWidget {
  const MainInterfaceScreen({super.key});

  @override
  State<MainInterfaceScreen> createState() => _MainInterfaceScreenState();
}

class _MainInterfaceScreenState extends State<MainInterfaceScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.25; // Adjust the ratio as needed
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: isPortrait ? const EdgeInsets.symmetric(vertical: 50.0) : EdgeInsets.zero, // Remove padding in landscape
          child: Stack(
            children: [
              Image.asset(
                "assets/HMIR.png",
                fit: BoxFit.fill,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                bottom: isPortrait ? 80 : 10, // Adjust bottom position based on orientation
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton(
                      context,
                      buttonWidth,
                      'STOP',
                      Colors.white,
                      Colors.red,
                          () {
                        showAlertDialog(context, 'Confirm',
                            'Are you sure you want to stop the system? ');
                      },
                    ),
                    buildButton(
                      context,
                      buttonWidth,
                      'RUN',
                      Colors.white,
                      Colors.green,
                          () {
                        showAlertDialog(context, 'Confirm',
                            'Are you sure you want to run the system? ');
                      },
                    ),
                    buildButton(
                      context,
                      buttonWidth,
                      'ALARM SILENCE',
                      Colors.white,
                      Colors.orange,
                          () {
                        showAlertDialog(context, 'Confirm',
                            'Are you sure you want to silence the system? ');
                      },
                    ),
                    buildButton(
                      context,
                      buttonWidth,
                      'MENU',
                      Colors.white,
                      Colors.blueAccent,
                          () {
                        Get.to(() => purifyManager());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  // Function to build a dynamic button widget
  Widget buildButton(
    BuildContext context,
    double buttonWidth,
    String title,
    Color startColor,
    Color endColor,
    VoidCallback onPressed,
  ) {
    return Container(
      height: 70,
      width: buttonWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            startColor, // Top color (dynamic)
            endColor, // Bottom color (dynamic)
          ],
        ),
        borderRadius: BorderRadius.circular(5), // Rounded corners for gradient
      ),
      child: OutlinedButton(
        onPressed: onPressed, // Dynamic onPressed functionality
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 2.0, color: Colors.white),
          // White border
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          foregroundColor: Colors.white, // Text color
        ),
        child: Text(
          title, // Dynamic title
          style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold), // White text color
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context, String title, String body) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$title'),
        content: Text('$body'),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: TColors.button),
            child: Text(
              'OK',
              style: TextStyle(color: TColors.textWhite),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.grey,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Cancel",
                style: TextStyle(color: TColors.textBlack),
              )),
        ],
      );
    },
  );
}
