// import 'package:flutter/material.dart';

// class ApprovePopUp extends StatelessWidget {
//   @override
//   Future<dynamic> build(BuildContext context) {
//     return showDialog(
//   context: context,
//   builder: (BuildContext context) {
//     return AlertDialog(
//       title: Text('Popup Title'),
//       content: Text('Popup message'),
//       actions: <Widget>[
//         TextButton(
//           child: Text('OK'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ],
//     );
//   },
// );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';

class ApprovePopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "CONGRATULATIONS!",
          style: TextStyle(
            fontSize: 12,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            // color: Color(0xFFFF3162),
            color: AppColors.favHeart,
          ),
        ),
      ),
      content: Container(
        // height: 294,
        height: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Image.asset(
              AppAssets.approveImage,
              fit: BoxFit.cover,
              // height: 131,
              // width: 390,
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Congratulations on finding a new co-founder! Wishing you all the best on this new journey.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 15,
            // ),
          ],
        ),
      ),
      actions: <Widget>[
        // TextButton(
        //   child: Text('OK'),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        Column(
          children: [
            CustomButton(
              text: "Enter further details",
              fontSize: 12,
              onPressed: () {},
              width: 203,
              height: 42,
              radius: 29,
              // color: Color(0xFF499359),
              color: AppColors.primary,
            ),
            SizedBox(
              height: 9,
            ),
            TextButton(
              child: Text(
                'No, I will do it later',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  // color: Color(0xFF499359),
                  color: AppColors.primary,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
