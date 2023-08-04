import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/main.dart';

// import riverpod
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TutorialScreen2 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Media Query

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          //  Color(0xFF499359),
          AppColors.primary,
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Skip',
            style: TextStyle(
              // color: Color(0xFF499359),
              color: AppColors.primary,
            ),
          ),
        ),
        toolbarHeight: 0,
      ),
      //extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          height: screenHeight,
          child: Column(
            children: [
              // Image.asset(
              //   'assets/images/Rectangle.png',
              //   fit: BoxFit.cover,
              // ),
              // Container(
              //   height: MediaQuery.of(context)
              //       .padding
              //       .top, // Adjust the height to accommodate the system status bar
              //   color: Colors.transparent,
              // ),
              // Image.asset(
              //   AppAssets.tutorialScreenCloudImage,
              //   fit: BoxFit.cover,

              //   // Refer once
              //   width: screenWidth,
              // ),

              // Refer Once

              AspectRatio(
                aspectRatio: 16 / 9,
                child: Stack(
                  children: [
                    Image.asset(
                      AppAssets.tutorialScreenCloudImage2,
                      fit: BoxFit.cover,

                      // Refer once
                      width: screenWidth,
                    ),
                    Positioned(
                      // top: 14,
                      // left: 329,
                      // Refer Once
                      left: screenWidth * 0.85,
                      child: TextButton(
                        onPressed: () {
                          ref.read(navigationProvider.notifier).state =
                              'signupScreen';
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            // color: Color(0xFF499359),
                            color: AppColors.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(
              //   height: 40,
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              Image.asset(
                AppAssets.tutorialScreen2Img,
                fit: BoxFit.cover,
              ),

              // SizedBox(
              //   // height: 49,
              //   height: 30,
              // ),

              Column(
                children: [
                  Text(
                    "Let's Build",
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.w700,
                      // color: Color(0xFFFFFFFF),
                      color: AppColors.onPrimary,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    "Together",
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.w700,
                      // color: Color(0xFFFFFFFF),
                      color: AppColors.onPrimary,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    // height: 17,
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get matched with compatible co-founders in just a few taps.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            // color: Color(0xFFFFFFFF),
                            color: AppColors.onPrimary,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        // Text(
                        //   "in just a few taps.",
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w400,
                        //     // color: Color(0xFFFFFFFF),
                        //     color: AppColors.onPrimary,
                        //     fontFamily: 'Poppins',
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          ref.read(navigationProvider.notifier).state =
                              'tutorialScreen1';
                        },
                        child: Image.asset(
                          'assets/images/Circle_Scroll_TutorialScreen.png',
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_Scroll_TutorialScreen.png',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          ref.read(navigationProvider.notifier).state =
                              'tutorialScreen3';
                        },
                        child: Image.asset(
                          'assets/images/Circle_Scroll_TutorialScreen.png',
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      GestureDetector(
                        onTap: () {
                          ref.read(navigationProvider.notifier).state =
                              'tutorialScreen3';
                        },
                        child: Image.asset(
                          'assets/images/MovetoNextScreen_TutorialScreen2.png',
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
    );
  }
}
