// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/main.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:nukleushive_app/views/mobile_view/notifications_interview_screen.dart';

class NotificationsRecommendationsScreen extends StatefulWidget {
  @override
  State<NotificationsRecommendationsScreen> createState() =>
      _NotificationsRecommendationsScreenState();
}

class _NotificationsRecommendationsScreenState
    extends State<NotificationsRecommendationsScreen> {
  @override
  Widget build(BuildContext context) {
    // Media Query

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFFCFDF6),
          AppColors.background,
      // appBar: PreferredSize(
      //   // Refer Once
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
                  left: 18,
                ),
                child: Container(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Interview

                      InterviewTab(),

                      // SizedBox(
                      //   width: 45,
                      // ),

                      // Results

                      ResultsTab(),

                      // Text(
                      //   "Results",
                      //   style: TextStyle(
                      //     fontSize: 14,
                      //     // color: Color(0xFF499359),
                      //     color: Color(0xFFDEE5D8),
                      //     fontFamily: 'Poppins-Regular',
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 31,
                      // ),

                      // Recommendations

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            "Recommendations",
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
              ),
              SizedBox(
                // height: 22,
                height: 15,
              ),

              // 1st

              // Container(
              //   decoration: BoxDecoration(
              //     color: Color(0xFFFFFFFF),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.amber,
              //         blurRadius: 0.1,
              //       ),
              //     ],
              //     borderRadius: BorderRadius.circular(
              //       4,
              //     ),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.fromLTRB(
              //       13,
              //       19,
              //       7,
              //       19,
              //     ),
              //     child: Row(
              //       children: [
              //         Image.asset(
              //           AppAssets.notificationsInterviewScreenImage1,
              //           fit: BoxFit.cover,
              //           // height: 131,
              //           // width: 390,
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Row(
              //               children: [
              //                 Text(
              //                   "Your interview with ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Color(0xFF000000),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w400,
              //                   ),
              //                 ),
              //                 Text(
              //                   "Richard Moore ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Color(0xFFAB218D),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w400,
              //                   ),
              //                 ),
              //                 Text(
              //                   "has ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Color(0xFF000000),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w400,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             Row(
              //               children: [
              //                 // Text(
              //                 //   "been rescheduled to 30th May at ",
              //                 //   style: TextStyle(
              //                 //     fontSize: 12,
              //                 //     color: Color(0xFF000000),
              //                 //     fontFamily: 'Poppins',
              //                 //     fontWeight: FontWeight.w400,
              //                 //   ),
              //                 // ),
              //                 Text(
              //                   "been ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Color(0xFF000000),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w400,
              //                   ),
              //                 ),
              //                 Text(
              //                   "rescheduled  ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Color(0xFF000000),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w600,
              //                   ),
              //                 ),
              //                 Text(
              //                   "to ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Color(0xFF000000),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w400,
              //                   ),
              //                 ),
              //                 Text(
              //                   "30th May ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     // color: Color(0xFF000000),
              //                     color: Color(0xFFAB218D),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w400,
              //                   ),
              //                 ),
              //                 Text(
              //                   "at ",
              //                   style: TextStyle(
              //                     fontSize: 12,
              //                     color: Color(0xFF000000),
              //                     fontFamily: 'Poppins',
              //                     fontWeight: FontWeight.w400,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             Text(
              //               "5:30PM",
              //               style: TextStyle(
              //                 fontSize: 12,
              //                 color: Color(0xFFAB218D),
              //                 fontFamily: 'Poppins',
              //                 fontWeight: FontWeight.w400,
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           width: 8,
              //         ),
              //         Image.asset(
              //           AppAssets.notificationsInterviewScreenImage2,
              //           fit: BoxFit.cover,
              //           // height: 131,
              //           // width: 390,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              NotiRecommCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 12,
              ),

              // 2nd

              NotiRecommCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 12,
              ),

              // 3rd

              NotiRecommCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 12,
              ),

              // 4th

              NotiRecommCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 12,
              ),

              // 5th

              NotiRecommCard(
                screenWidth: screenWidth,
              ),

              SizedBox(
                height: 12,
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

class InterviewTab extends ConsumerWidget {
  const InterviewTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state =
            'notificationsInterviewScreen';
      },
      child: Text(
        "Interview",
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

// NotiRecommCard() {
//   return NotiRecommCard();
// }

class NotiRecommCard extends StatelessWidget {
  final double? screenWidth;
  const NotiRecommCard({
    Key? key,
    this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              AppAssets.notificationsInterviewScreenImage1,
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
                    Text(
                      "Richard Moore ",
                      style: TextStyle(
                        fontSize: 12,
                        // color: Color(0xFFAB218D),
                        color: AppColors.trial2DarkRed,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "might be a good ",
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
                  "match for your needs.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF000000),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Connect with him now.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF000000),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              // width: 40,
              width: screenWidth! * 0.015,
            ),
            Image.asset(
              AppAssets.notificationsInterviewScreenImage2,
              fit: BoxFit.cover,
              // height: 131,
              // width: 390,
            ),
          ],
        ),
      ),
    );
  }
}
