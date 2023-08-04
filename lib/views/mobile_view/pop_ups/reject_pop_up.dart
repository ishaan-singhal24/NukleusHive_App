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

class RejectPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "OOPS!",
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
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 33,
            ),
            Image.asset(
              AppAssets.rejectImage,
              fit: BoxFit.cover,
              // height: 131,
              // width: 390,
            ),
            SizedBox(
              height: 33,
            ),
            Text(
              "Are you sure you want to reject the Tech Co-Founder?",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: "Poppins",
              ),
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
              text: "Book another interview",
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
                'Yes, Reject',
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
