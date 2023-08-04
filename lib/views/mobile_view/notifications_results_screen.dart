// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:nukleushive_app/views/mobile_view/notifications_interview_screen.dart';
import 'package:nukleushive_app/views/mobile_view/notifications_recommendations_screen.dart';

class NotificationsResultsScreen extends StatefulWidget {
  @override
  State<NotificationsResultsScreen> createState() =>
      _NotificationsResultsScreenState();
}

class _NotificationsResultsScreenState
    extends State<NotificationsResultsScreen> {
  @override
  Widget build(BuildContext context) {
    // Media Query

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFFCFDF6),
          AppColors.surface,
      // appBar: PreferredSize(
      // Refer Once
      //   preferredSize: const Size.fromHeight(107.0),
      //   child: AppBar(
      //     backgroundColor: Color(0xFFFFFFFF),
      //     // backgroundColor: Colors.green,
      //     shadowColor: Colors.transparent,
      //     title: Align(
      //       alignment: Alignment.centerLeft,
      //       child: Text(
      //         'Notifications',
      //         style: TextStyle(
      //           color: Color(0xFF002204),
      //           fontFamily: "Poppins",
      //           fontSize: 20,
      //           fontWeight: FontWeight.w700,
      //         ),
      //       ),
      //     ),
      //     titleTextStyle: TextStyle(
      //       fontFamily: 'Poppins',
      //       fontSize: 20,
      //       fontWeight: FontWeight.w700,
      //     ),
      //     toolbarHeight: 64,
      //   ),
      // ),

      // App bar

      appBar: AppBar(
        backgroundColor: Colors.white,
        // shadowColor: Colors.transparent,
        title: Text(
          'Notifications',
          // textAlign: TextAlign.center,
          style: TextStyle(
            // color: Color(0xFF002204),
            color: AppColors.onPrimaryContainer,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        // toolbarHeight: 56.0,
      ),

      //extendBodyBehindAppBar: true,
      body:
          //  SafeArea(
          // child:
          SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 17,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    // left: 18,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: Container(
                    width: screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Interview

                        // Text(
                        //   "Interview",
                        //   style: TextStyle(
                        //     fontSize: 14,
                        //     // color: Color(0xFF499359),
                        //     color: Color(0xFFDEE5D8),
                        //     fontFamily: 'Poppins-Regular',
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),

                        InterviewTab(),

                        // SizedBox(
                        //   width: 45,
                        // ),

                        // Results

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Text(
                              "Results",
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
                                color: Color(0xFF499359),
                                width: 4,
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(
                        //   width: 31,
                        // ),

                        // Recommendations

                        // Text(
                        //   "Recommendations",
                        //   style: TextStyle(
                        //     fontSize: 14,
                        //     // color: Color(0xFF499359),
                        //     color: Color(0xFFDEE5D8),
                        //     fontFamily: 'Poppins-Regular',
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),

                        RecommendationsTab(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                // height: 22,
                height: 15,
              ),

              // 1st

              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  // color: Color(0xFFFFFFFF),
                  color: AppColors.onPrimary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber,
                      blurRadius: 0.1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    13,
                    19,
                    7,
                    19,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.notificationsResultsScreenImage1,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Congratulations!",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF564DC8),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Your profile was approved by Harris",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              // Text(
                              //   "been rescheduled to 30th May at ",
                              //   style: TextStyle(
                              //     fontSize: 12,
                              //     color: Color(0xFF000000),
                              //     fontFamily: 'Poppins',
                              //     fontWeight: FontWeight.w400,
                              //   ),
                              // ),
                              Row(
                                children: [
                                  Text(
                                    "Black. ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF000000),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Connect now!",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF564DC8),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                // width: 125,
                                width: screenWidth * 0.25,
                              ),

                              Text(
                                "3h",
                                style: TextStyle(
                                  fontSize: 12,
                                  // color: Color(0xFF72796F),
                                  color: AppColors.outline,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // notifiIntCard(),

              SizedBox(
                height: 15,
              ),

              // 2nd

              // notifiIntCard(),

              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  // color: Color(0xFFFFFFFF),
                  color: AppColors.onPrimary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber,
                      blurRadius: 0.1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    13,
                    19,
                    7,
                    19,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.notificationsResultsScreenImage2,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              // Text(
                              //   "been rescheduled to 30th May at ",
                              //   style: TextStyle(
                              //     fontSize: 12,
                              //     color: Color(0xFF000000),
                              //     fontFamily: 'Poppins',
                              //     fontWeight: FontWeight.w400,
                              //   ),
                              // ),
                              Text(
                                "Complete your ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Personal Details",
                                style: TextStyle(
                                  fontSize: 12,
                                  // color: Color(0xFF34BBD9),
                                  color: AppColors.trialNotIfBlue,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Text(
                                " now",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "to have a smooth communication",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "process now!",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                // width: 172,
                                width: screenWidth * 0.4,
                              ),
                              Text(
                                "3h",
                                style: TextStyle(
                                  fontSize: 12,
                                  // color: Color(0xFF72796F),
                                  color: AppColors.outline,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // 3rd

              // notifiIntCard(),

              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  // color: Color(0xFFFFFFFF),
                  color: AppColors.onPrimary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber,
                      blurRadius: 0.1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    13,
                    19,
                    7,
                    19,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.notificationsResultsScreenImage3,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Job!",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "We will now notify you regarding the",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              // Text(
                              //   "been rescheduled to 30th May at ",
                              //   style: TextStyle(
                              //     fontSize: 12,
                              //     color: Color(0xFF000000),
                              //     fontFamily: 'Poppins',
                              //     fontWeight: FontWeight.w400,
                              //   ),
                              // ),
                              Text(
                                "further steps.",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                              SizedBox(
                                // width: 172,
                                width: screenWidth * 0.4,
                              ),

                              Text(
                                "3h",
                                style: TextStyle(
                                  fontSize: 12,
                                  // color: Color(0xFF72796F),
                                  color: AppColors.outline,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              // 4th

              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  // color: Color(0xFFFFFFFF),
                  color: AppColors.onPrimary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber,
                      blurRadius: 0.1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    13,
                    19,
                    7,
                    19,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.notificationsResultsScreenImage4,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Oh no!",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Hayson Breed ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFFA7BED),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "had other plans.",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              // Text(
                              //   "been rescheduled to 30th May at ",
                              //   style: TextStyle(
                              //     fontSize: 12,
                              //     color: Color(0xFF000000),
                              //     fontFamily: 'Poppins',
                              //     fontWeight: FontWeight.w400,
                              //   ),
                              // ),
                              Text(
                                "Keeping browsing!",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                              SizedBox(
                                // width: 142,
                                width: screenWidth * 0.3,
                              ),

                              Text(
                                "3h",
                                style: TextStyle(
                                  fontSize: 12,
                                  // color: Color(0xFF72796F),
                                  color: AppColors.outline,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
              AppAssets.interviewNavIconImage,
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
              AppAssets.notificationsSelectedNavIconImage,
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

// notifiIntCard() {
//   return Padding(
//     padding: const EdgeInsets.only(
//       left: 13,
//       top: 19,
//       right: 9,
//       bottom: 20,
//     ),
//     child: Container(
//       decoration: BoxDecoration(
//         color: Color(0xFFFFFFFF),
//         borderRadius: BorderRadius.circular(
//           4,
//         ),
//       ),
//       child: Row(
//         children: [
//           Image.asset(
//             AppAssets.notificationsInterviewScreenImage1,
//             fit: BoxFit.cover,
//             // height: 131,
//             // width: 390,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     "Your interview with ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFF000000),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                   Text(
//                     "Richard Moore ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFFAB218D),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                   Text(
//                     "has ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFF000000),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   // Text(
//                   //   "been rescheduled to 30th May at ",
//                   //   style: TextStyle(
//                   //     fontSize: 12,
//                   //     color: Color(0xFF000000),
//                   //     fontFamily: 'Poppins',
//                   //     fontWeight: FontWeight.w400,
//                   //   ),
//                   // ),
//                   Text(
//                     "been ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFF000000),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                   Text(
//                     "rescheduled  ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFF000000),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Text(
//                     "to ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFF000000),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                   Text(
//                     "30th May ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       // color: Color(0xFF000000),
//                       color: Color(0xFFAB218D),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                   Text(
//                     "at ",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Color(0xFF000000),
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ],
//               ),
//               Text(
//                 "5:30PM",
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Color(0xFFAB218D),
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             width: 8,
//           ),
//           Image.asset(
//             AppAssets.notificationsInterviewScreenImage2,
//             fit: BoxFit.cover,
//             // height: 131,
//             // width: 390,
//           ),
//         ],
//       ),
//     ),
//   );
// }
