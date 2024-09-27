
import 'package:aqua_pure/features/presentations/screens/Purify_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // The background image
            Image.asset(
              "assets/HMIR.png",
              fit: BoxFit.fill,
              width: double.infinity,
              height: MediaQuery.of(context).size.height, // Use screen height
            ),
        
            // Custom button with gradient background
            Positioned(
              bottom: 10,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white, // Top color
                      Colors.blue,  // Bottom color
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5), // Rounded corners for gradient
                ),
                child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => PurifierManager());
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2.0, color: Colors.white), // White border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    foregroundColor: Colors.white, // Text color
                  ),
                  child: const Text(
                    'Main Menu',
                    style: TextStyle(color: Colors.white, fontSize: 15), // White text color
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white, // Top color
                      Colors.red,  // Bottom color
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5), // Rounded corners for gradient
                ),
                child: OutlinedButton(
                  onPressed: () {
                    // Handle button press action here
                    print('Custom outlined button pressed');
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2.0, color: Colors.white), // White border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    foregroundColor: Colors.white, // Text color
                  ),
                  child: const Text(
                    'Stop System',
                    style: TextStyle(color: Colors.white, fontSize: 15), // White text color
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 210,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white, // Top color
                      Colors.green,  // Bottom color
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5), // Rounded corners for gradient
                ),
                child: OutlinedButton(
                  onPressed: () {
                    // Handle button press action here
                    print('Custom outlined button pressed');
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2.0, color: Colors.white), // White border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    foregroundColor: Colors.white, // Text color
                  ),
                  child: const Text(
                    'Run System',
                    style: TextStyle(color: Colors.white, fontSize: 15), // White text color
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 400,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white, // Top color
                      Colors.orange,  // Bottom color
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5), // Rounded corners for gradient
                ),
                child: OutlinedButton(
                  onPressed: () {
                    // Handle button press action here
                    print('Custom outlined button pressed');
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2.0, color: Colors.white), // White border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    foregroundColor: Colors.white, // Text color
                  ),
                  child: const Text(
                    'Alarm Silence',
                    style: TextStyle(color: Colors.white, fontSize: 15), // White text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
