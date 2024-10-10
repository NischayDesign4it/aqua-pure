// import 'package:flutter/material.dart';
//
// import '../utils/constants/colors.dart';
//
//
//
// class QDataContainer extends StatelessWidget {
//   final String? title1;
//   final String heading;
//   final String? title2;
//   final String? title3;
//   final String? title4;
//   final String? title5;
//   final String? title6;
//   final String? title7;
//   final String? title8;
//   final String? title9;
//   final String? title10;
//
//   const QDataContainer({
//     super.key,
//     this.title1,
//     this.title2,
//     this.title3,
//     this.title4,
//     this.title5,
//     this.title6,
//     this.title7,
//     this.title8,
//     this.title9,
//     this.title10,
//     required this.heading,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Heading
//         Container(
//           height: 40,
//           width: double.infinity,
//           decoration: BoxDecoration(color: TColors.appBarColor),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//             child: Text(
//               heading,
//               style: TextStyle(
//                 color: TColors.textWhite,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//
//         // Data container with rows conditionally shown based on non-null titles
//         Container(
//           width: double.infinity,
//           decoration: BoxDecoration(color: TColors.appBarColor.withOpacity(0.3)),
//           child: Column(
//             children: [
//               if (title1 != null && title2 != null) _buildDataRow(title1, title2),
//               if (title3 != null && title4 != null) _buildDataRow(title3, title4),
//               if (title5 != null && title6 != null) _buildDataRow(title5, title6),
//               if (title7 != null && title8 != null) _buildDataRow(title7, title8),
//               if (title9 != null && title10 != null) _buildDataRow(title9, title10),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   // Method to build a row for each pair of titles
//   Widget _buildDataRow(String? titleLeft, String? titleRight) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(child: Text(titleLeft!)), // Expanded text for the left title
//           SizedBox(width: 5),
//           Container(
//             height: 25,
//             width: 40,
//             decoration: BoxDecoration(
//               border: Border.all(),
//               color: TColors.inactiveBtn,
//             ),
//           ),
//           SizedBox(width: 30),
//           Expanded(child: Text(titleRight!)), // Expanded text for the right title
//           SizedBox(width: 10),
//           Container(
//             height: 25,
//             width: 40,
//             decoration: BoxDecoration(
//               border: Border.all(),
//               color: TColors.inactiveBtn,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class QDataContainer extends StatelessWidget {
  final String? title1;
  final String heading;
  final String? title2;
  final String? title3;
  final String? title4;
  final String? title5;
  final String? title6;
  final String? title7;
  final String? title8;
  final String? title9;
  final String? title10;

  const QDataContainer({
    super.key,
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.title5,
    this.title6,
    this.title7,
    this.title8,
    this.title9,
    this.title10,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    // Determine if the screen width is large (indicating desktop)
    bool isDesktop = MediaQuery.of(context).size.width > 600; // Adjust the breakpoint as needed

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Heading
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(color: TColors.appBarColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              heading,
              style: TextStyle(
                color: TColors.textWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Data container with rows conditionally shown based on non-null titles
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isDesktop
                ? TColors.textWhite // Use your desired color for desktop
                : TColors.appBarColor.withOpacity(0.3),
          ),
          child: Column(
            children: [
              if (title1 != null && title2 != null) _buildDataRow(title1, title2),
              if (title3 != null && title4 != null) _buildDataRow(title3, title4),
              if (title5 != null && title6 != null) _buildDataRow(title5, title6),
              if (title7 != null && title8 != null) _buildDataRow(title7, title8),
              if (title9 != null && title10 != null) _buildDataRow(title9, title10),
            ],
          ),
        ),
      ],
    );
  }

  // Method to build a row for each pair of titles
  Widget _buildDataRow(String? titleLeft, String? titleRight) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(titleLeft!)), // Expanded text for the left title
          SizedBox(width: 5),
          Container(
            height: 25,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(),
              color: TColors.inactiveBtn,
            ),
          ),
          SizedBox(width: 30),
          Expanded(child: Text(titleRight!)), // Expanded text for the right title
          SizedBox(width: 10),
          Container(
            height: 25,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(),
              color: TColors.inactiveBtn,
            ),
          ),
        ],
      ),
    );
  }
}
