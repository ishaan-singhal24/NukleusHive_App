// // import 'dart:ffi';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:nukleushive_app/data/constants/app_assets.dart';
// import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
//
// class ScheduledInterviewsCompletedScreen extends StatefulWidget {
//   @override
//   State<ScheduledInterviewsCompletedScreen> createState() =>
//       _ScheduledInterviewsCompletedScreenState();
// }
//
// class _ScheduledInterviewsCompletedScreenState
//     extends State<ScheduledInterviewsCompletedScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFCFDF6),
//       // Scheduled Interviews App Bar
//       appBar: AppBar(
//         backgroundColor: Color(0xFFFFFFFF),
//         title: Align(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             'Scheduled Interviews',
//             style: TextStyle(
//               color: Color(0xFF002204),
//               fontFamily: "Poppins",
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//         titleTextStyle: TextStyle(
//           fontFamily: 'Poppins',
//           fontSize: 20,
//           fontWeight: FontWeight.w700,
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               // Handle search icon pressed
//             },
//             icon: Image.asset(
//               AppAssets.searchIconImage,
//               fit: BoxFit.cover,
//             ),
//           ),
//           IconButton(
//             onPressed: () {
//               // Handle filter icon pressed
//             },
//             icon: Image.asset(
//               AppAssets.filterIconImage,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//
//       body:
//           //  SafeArea(
//           // child:
//           SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(
//             left: 16,
//             right: 17,
//           ),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 29,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 18,
//                 ),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Upcoming",
//                       style: TextStyle(
//                         fontSize: 14,
//                         // color: Color(0xFF499359),
//                         color: Color(0xFFDEE5D8),
//                         fontFamily: 'Poppins-Regular',
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 49,
//                     ),
//
//                     // ...
//
//                     Container(
//                       child: Padding(
//                         padding: const EdgeInsets.all(9.0),
//                         child: Text(
//                           "Completed",
//                           style: TextStyle(
//                             fontSize: 14,
//                             // color: Color(0xFFDEE5D8),
//                             color: Color(0xFF499359),
//                             fontFamily: 'Poppins-Regular',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border(
//                           bottom: BorderSide(
//                             color: Color(0xFF499359),
//                             width: 4,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 // height: 22,
//                 height: 7,
//               ),
//
//               SchIntCompletedCard(),
//
//               SizedBox(
//                 height: 13,
//               ),
//
//               // 2nd
//
//               SchIntCompletedCard(),
//
//               SizedBox(
//                 height: 13,
//               ),
//
//               // 3rd
//
//               SchIntCompletedCard(),
//
//               SizedBox(
//                 height: 13,
//               ),
//             ],
//           ),
//         ),
//       ),
//
//       // Bottom Nav Bar
//
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               AppAssets.dashboardNavIconImage,
//             ),
//             label: 'Dashboard',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               AppAssets.interviewSelectedNavIconImage,
//             ),
//             label: 'Interview',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               AppAssets.favNavIconImage,
//             ),
//             label: 'Favourite',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               AppAssets.notificationsNavIconImage,
//             ),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               AppAssets.settingsNavIconImage,
//             ),
//             label: 'Settings',
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// SchIntCompletedCard() {
//   return Padding(
//     padding: const EdgeInsets.only(
//       left: 14,
//       top: 15,
//       right: 13,
//       bottom: 9,
//     ),
//     child: Container(
//       decoration: BoxDecoration(
//         color: Color(0xFFFFFFFF),
//         borderRadius: BorderRadius.circular(
//           10,
//         ),
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Image.asset(
//                 AppAssets.favouriteProfilesScreenImage1,
//                 fit: BoxFit.cover,
//                 // height: 131,
//                 // width: 390,
//               ),
//               SizedBox(
//                 width: 12.18,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "John Doe",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Color(0xFF499359),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   Text(
//                     "22nd April 2023  |   4pm - 6pm",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFF72796F),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 17,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               CustomButton(
//                 text: "Approve",
//                 onPressed: () {},
//                 color: Color(0xFF278329),
//                 width: 77,
//                 height: 28,
//               ),
//               // SizedBox(
//               //   width: 14,
//               // ),
//               CustomButton(
//                 text: "Reject",
//                 onPressed: () {},
//                 color: Color(0xFFBA1A1A),
//                 width: 65,
//                 height: 28,
//               ),
//               // SizedBox(
//               //   width: 15,
//               // ),
//               CustomButton(
//                 // text: "Schedule Next Interview",
//                 text: "Schedule Next",
//                 onPressed: () {},
//                 color: Color(0xFFF5A302),
//                 // width: 157,
//                 width: 160,
//                 height: 28,
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/main.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:nukleushive_app/views/mobile_view/pop_ups/approve_pop_up.dart';
import 'package:nukleushive_app/views/mobile_view/pop_ups/reject_pop_up.dart';
import 'package:nukleushive_app/views/mobile_view/pop_ups/schedule_next_interview_pop_up.dart';

class ScheduledInterviewsCompletedScreen extends StatefulWidget {
  @override
  State<ScheduledInterviewsCompletedScreen> createState() =>
      _ScheduledInterviewsCompletedScreenState();
}

class _ScheduledInterviewsCompletedScreenState
    extends State<ScheduledInterviewsCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:
          // Color(0xFFFCFDF6),
          AppColors.background,
      appBar: AppBar(
        backgroundColor:
            // Color(0xFFFFFFFF),
            AppColors.onPrimary,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Scheduled Interviews',
            style: TextStyle(
              // color: Color(0xFF002204),
              color: AppColors.onPrimaryContainer,
              fontFamily: "Poppins",
              // fontSize: 20,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle search icon pressed
            },
            icon: Image.asset(
              AppAssets.searchIconImage,
              fit: BoxFit.cover,
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle filter icon pressed
            },
            icon: Image.asset(
              AppAssets.filterIconImage,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: Row(
                  children: [
                    // Upcoming Tab
                    UpcomingTab(),

                    SizedBox(
                      width: 49,
                    ),

                    // ...

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            fontSize: 14,
                            // color: Color(0xFFDEE5D8),
                            // color: Color(0xFF499359),
                            color: AppColors.primary,
                            fontFamily: 'Poppins-Regular',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            // color: Color(0xFF499359),
                            color: AppColors.primary,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                // height: 22,
                // height: 7,
                height: 16,
              ),

              SchIntCompletedCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 15,
              ),

              // 2nd

              SchIntCompletedCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 15,
              ),

              // 3rd

              SchIntCompletedCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),

      // Bottom Nav Bar

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.dashboardNavIconImage,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.interviewSelectedNavIconImage,
            ),
            label: 'Interview',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.favNavIconImage,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.notificationsNavIconImage,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.settingsNavIconImage,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class UpcomingTab extends ConsumerWidget {
  const UpcomingTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state =
            'scheduledInterviewsUpcomingScreen';
      },
      child: Text(
        "Upcoming",
        style: TextStyle(
          fontSize: 14,
          // color: Color(0xFF499359),
          // color: Color(0xFFDEE5D8),
          color: AppColors.surfaceVariant,
          fontFamily: 'Poppins-Regular',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

//Name Better
//Create individual widget - Ask before creating
// Widget SchIntCompletedCard(final double? screenWidth) {
//   return SchIntCompletedCard();
// }

class SchIntCompletedCard extends StatelessWidget {
  final double? screenWidth;
  const SchIntCompletedCard({
    Key? key,
    this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        // color: Color(0xFFFFFFFF),
        color: AppColors.onPrimary,
        borderRadius: BorderRadius.circular(
          10,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 0.1,
          ),
        ],
      ),
      //Extra Padding added by Pratham
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  AppAssets.favouriteProfilesScreenImage1,
                  fit: BoxFit.cover,
                  // height: 131,
                  // width: 390,
                ),
                SizedBox(
                  width: 12.18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 16,
                        // color: Color(0xFF499359),
                        color: AppColors.primary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "22nd April 2023  |   4pm - 6pm",
                      style: TextStyle(
                        fontSize: 12,
                        // color: Color(0xFF72796F),
                        color: AppColors.outline,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "Approve",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ApprovePopUp();
                      },
                    );
                  },
                  color: Color(0xFF278329),
                  width: 77,
                  height: 28,
                  textColor: Colors.white,
                ),
                CustomButton(
                  text: "Reject",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return RejectPopUp();
                      },
                    );
                  },
                  // color: Color(0xFFBA1A1A),
                  color: AppColors.error,
                  width: 65,
                  height: 28,
                  textColor: Colors.white,
                ),
                CustomButton(
                  // text: "Schedule Next Interview",
                  text: "Schedule Next",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ScheduleNextInterviewPopUp();
                      },
                    );
                  },
                  color: Color(0xFFF5A302),
                  // width: 157,
                  width: 150,
                  height: 28,
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
