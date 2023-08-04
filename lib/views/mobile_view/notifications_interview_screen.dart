// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/main.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';

class NotificationsInterviewScreen extends StatefulWidget {
  @override
  State<NotificationsInterviewScreen> createState() =>
      _NotificationsInterviewScreenState();
}

class _NotificationsInterviewScreenState
    extends State<NotificationsInterviewScreen> {
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

      //  App Bar

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
            // left: 16,
            left: 6,
            // right: 17,
            right: 6,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Interview

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text(
                          "Interview",
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

                    // SizedBox(
                    //   width: 45,
                    // ),

                    // Results

                    ResultsTab(),

                    // SizedBox(
                    //   width: 31,
                    // ),

                    // Recommendations

                    RecommendationsTab(),
                  ],
                ),
              ),
              SizedBox(
                // height: 22,
                height: 15,
              ),

              // 1st

              NotificationInterviewScheduleRescheduleCard(
                screenWidth: screenWidth,
                text: "rescheduled",
              ),

              // notifiIntCard(),

              SizedBox(
                height: 15,
              ),

              // 2nd

              // notifiIntCard(),

              NotificationInterviewScheduleRescheduleCard(
                screenWidth: screenWidth,
                text: "scheduled",
              ),

              // Container(
              //   width: screenWidth,
              //   // width: 357,
              //   // height: 93,
              //   decoration: BoxDecoration(
              //     // color: Color(0xFFFFFFFF),
              //     color: AppColors.onPrimary,
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
              //       // 13,
              //       5,
              //       19,
              //       // 7,
              //       0,
              //       19,
              //     ),
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Image.asset(
              //           AppAssets.notificationsInterviewScreenImage3,
              //           fit: BoxFit.cover,
              //           // height: 131,
              //           // width: 390,
              //         ),
              //         SizedBox(
              //           // width: 10,
              //           width: 5,
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
              //                     // color: Color(0xFF34BBD9),
              //                     color: AppColors.trialNotIfBlue,
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
              //                   "scheduled  ",
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
              //                     // color: Color(0xFF34BBD9),
              //                     color: AppColors.trialNotIfBlue,
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
              //                 // color: Color(0xFF34BBD9),
              //                 color: AppColors.trialNotIfBlue,
              //                 fontFamily: 'Poppins',
              //                 fontWeight: FontWeight.w400,
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           // width: 8,
              //           width: 4,
              //         ),
              //         Image.asset(
              //           AppAssets.notificationsInterviewScreenImage4,
              //           fit: BoxFit.cover,
              //           // height: 131,
              //           // width: 390,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

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
                    // 13,
                    5,
                    19,
                    // 7,
                    0,
                    19,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.notificationsInterviewScreenImage5,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        // width: 10,
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row(
                          //   children: [
                          //     Text(
                          //       "Your interview with ",
                          //       style: TextStyle(
                          //         fontSize: 12,
                          //         color: Color(0xFF000000),
                          //         fontFamily: 'Poppins',
                          //         fontWeight: FontWeight.w400,
                          //       ),
                          //     ),
                          //     Text(
                          //       "Richard Moore ",
                          //       style: TextStyle(
                          //         fontSize: 12,
                          //         color: Color(0xFFAB218D),
                          //         fontFamily: 'Poppins',
                          //         fontWeight: FontWeight.w400,
                          //       ),
                          //     ),
                          //     Text(
                          //       "has ",
                          //       style: TextStyle(
                          //         fontSize: 12,
                          //         color: Color(0xFF000000),
                          //         fontFamily: 'Poppins',
                          //         fontWeight: FontWeight.w400,
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          Text(
                            "Reminder!",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
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
                                "Your interview begins in ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "one hour  ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFF8C542),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "with",
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
                            "Jason Roy",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFF8C542),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        // width: 8,
                        width: 4,
                      ),
                      Image.asset(
                        AppAssets.notificationsInterviewScreenImage6,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
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
                    // 13,
                    5,
                    19,
                    // 7,
                    0,
                    19,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.notificationsInterviewScreenImage7,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
                      ),
                      SizedBox(
                        // width: 10,
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reminder!",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Your interview begins in now",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Join Now using the link!",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                // color: Color(0xFF499359),
                                color: AppColors.primary,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Image.asset(
                        AppAssets.notificationsInterviewScreenImage8,
                        fit: BoxFit.cover,
                        // height: 131,
                        // width: 390,
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

class NotificationInterviewScheduleRescheduleCard extends StatelessWidget {
  const NotificationInterviewScheduleRescheduleCard({
    Key? key,
    required this.screenWidth,
    this.text,
  }) : super(key: key);

  final double? screenWidth;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
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
          // 13,
          // 0,
          5,
          19,
          // 0,
          // 7,
          0,
          19,
          // 0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text == "rescheduled"
                ? Image.asset(
                    AppAssets.notificationsInterviewScreenImage1,
                    fit: BoxFit.cover,
                    // height: 131,
                    // width: 390,
                  )
                : Image.asset(
                    AppAssets.notificationsInterviewScreenImage3,
                    fit: BoxFit.cover,
                    // height: 131,
                    // width: 390,
                  ),
            SizedBox(
              // width: 10,
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Your interview with ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Richard Moore ",
                      style: TextStyle(
                        fontSize: 12,
                        // color: Color(0xFFAB218D),
                        // color: AppColors.trial2DarkRed,
                        color: text == "rescheduled"
                            ? AppColors.trial2DarkRed
                            : AppColors.trialNotIfBlue,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "has ",
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
                      "been ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      // "rescheduled  ",
                      text!,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      " to ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF000000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "30th May ",
                      style: TextStyle(
                        fontSize: 12,
                        // color: Color(0xFF000000),
                        // color: Color(0xFFAB218D),
                        // color: AppColors.trial2DarkRed,
                        color: text == "rescheduled"
                            ? AppColors.trial2DarkRed
                            : AppColors.trialNotIfBlue,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "at ",
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
                  "5:30PM",
                  style: TextStyle(
                    fontSize: 12,
                    // color: Color(0xFFAB218D),
                    // color: AppColors.trial2DarkRed,
                    color: text == "rescheduled"
                        ? AppColors.trial2DarkRed
                        : AppColors.trialNotIfBlue,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              // width: 8,
              width: 4,
            ),
            text == "rescheduled"
                ? Image.asset(
                    AppAssets.notificationsInterviewScreenImage2,
                    fit: BoxFit.cover,
                    // height: 131,
                    // width: 390,
                  )
                : Image.asset(
                    AppAssets.notificationsInterviewScreenImage4,
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

class RecommendationsTab extends ConsumerWidget {
  const RecommendationsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state =
            'notificationsRecommendationsScreen';
      },
      child: Text(
        "Recommendations",
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

class ResultsTab extends ConsumerWidget {
  const ResultsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).state =
            'notificationsResultsScreen';
      },
      child: Text(
        "Results",
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
