// import 'package:flutter/material.dart';
// import 'package:aqua_pure/utils/constants/colors.dart';
// import 'package:aqua_pure/utils/constants/sizes.dart';
//
// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           // Optional image display
//           Padding(
//             padding: EdgeInsets.only(
//               top: TSizes.defaultSpace * 7,
//               right: 8.0,
//               left: 8.0,
//             ),
//             child: Image.asset('assets/Branding.png'),
//           ),
//           Expanded(
//             child: Container(
//               width: double.infinity,
//               height: 200,
//               color: Colors.blue, // Add color here to fill the shape
//               child:
//                 Container(
//                   width: double.infinity,
//                   height: 120,
//                   color: Colors.blue, // Ensure color covers the entire Container
//                   child: Center(
//                     child: Text(
//                       'Custom Clipped Area',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//         ],
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:aqua_pure/utils/constants/colors.dart';
import 'package:aqua_pure/utils/constants/sizes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      // Optional image display
      Padding(
        padding: EdgeInsets.only(
          top: TSizes.defaultSpace * 7,
          right: 8.0,
          left: 8.0,
        ),
        child: Image.asset('assets/Branding.png'),
      ),
      Expanded(
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: TColors.appBarColor.withOpacity(0.1), // Add color here to fill the shape
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Login", style: TextStyle(fontSize: TSizes.xl)),
              TextFormField(

              ),



            ],
            
          ),
        ),
      )
    ]));
  }
}
