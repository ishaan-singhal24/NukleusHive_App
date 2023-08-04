// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    // ));
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFFCFDF6),
          AppColors.surface,
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(94.0),
      //   child: AppBar(
      //     backgroundColor: Color(0xFFFFFFFF),
      //     // backgroundColor: Colors.green,
      //     shadowColor: Colors.transparent,
      //     title: Align(
      //       alignment: Alignment.center,
      //       child: Text(
      //         'Profile',
      //         style: TextStyle(
      //           color: Color(0xFF002204),
      //         ),
      //       ),
      //     ),
      //     titleTextStyle: TextStyle(
      //       fontFamily: 'Poppins',
      //       fontSize: 20,
      //       fontWeight: FontWeight.w700,
      //     ),
      //     toolbarHeight: 20,
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // shadowColor: Colors.transparent,
        title: Center(
          child: Text(
            'Profile',
            // textAlign: TextAlign.center,
            style: TextStyle(
              // color: Color(0xFF002204),
              color: AppColors.onPrimaryContainer,
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        // toolbarHeight: 56.0,
      ),
      //extendBodyBehindAppBar: true,
      body:
          //  SafeArea(
          // child:
          SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   height: 220,
            //   width: 390,
            //   child: Stack(
            //     children: [
            //       Image.asset(
            //         AppAssets.profileScreenImage1,
            //         fit: BoxFit.cover,
            //         height: 131,
            //         width: 390,
            //       ),
            //       Positioned(
            //         top: 87,
            //         left: 20,
            //         child: Row(
            //           children: [
            //             Image.asset(
            //               AppAssets.profileScreenImage2,
            //               // fit: BoxFit.cover,
            //               height: 123,
            //               width: 123,
            //               fit: BoxFit.cover,
            //             ),
            //             Container(
            //               child: Column(
            //                 children: [
            //                   // Refer Once
            //                   SizedBox(
            //                     height: 40,
            //                   ),
            //                   Text(
            //                     "Suneet Nayyer",
            //                     style: TextStyle(
            //                       fontSize: 20,
            //                       color: Color(0xFF101F10),
            //                       fontFamily: 'Poppins',
            //                       fontWeight: FontWeight.w700,
            //                     ),
            //                   ),
            //                   Text(
            //                     "Founder, XYZ Technologies",
            //                     style: TextStyle(
            //                       fontSize: 12.36,
            //                       color: Color(0xFF101F10),
            //                       fontFamily: 'Poppins',
            //                       fontWeight: FontWeight.w400,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 11,
            //                   ),
            //                   CustomButton(
            //                     text: "Edit Profile",
            //                     onPressed: () {},
            //                     width: 100,
            //                     height: 26,
            //                     color: Color(0xFF499359),
            //                   ),
            //                   // SizedBox(
            //                   //   height: 10,
            //                   // ),
            //                   // Column(
            //                   //   crossAxisAlignment: CrossAxisAlignment.start,
            //                   //   children: [
            //                   //     Text(
            //                   //       "150 Interviews",
            //                   //       style: TextStyle(
            //                   //         fontSize: 12,
            //                   //         color: Color(0xFFAB218D),
            //                   //         fontFamily: 'Poppins',
            //                   //         fontWeight: FontWeight.w700,
            //                   //       ),
            //                   //     ),
            //                   //   ],
            //                   // ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // Aspect Ratio

            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                children: [
                  Image.asset(
                    AppAssets.profileScreenImage1,
                    fit: BoxFit.cover,
                    // height: 131,
                    // width: 490,
                    width: screenWidth,
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppAssets.profileScreenImage2,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Refer Once
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Suneet Nayyer",
                              style: TextStyle(
                                fontSize: 20,
                                // color: Color(0xFF101F10),
                                color: AppColors.onSecondaryContainer,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Founder, XYZ Technologies",
                              style: TextStyle(
                                fontSize: 12.36,
                                // color: Color(0xFF101F10),
                                color: AppColors.onSecondaryContainer,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            CustomButton(
                              text: "Edit Profile",
                              onPressed: () {},
                              width: 100,
                              height: 26,
                              // color: Color(0xFF499359),
                              color: AppColors.primary,
                              textColor: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              radius: 9,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 17,
            ),
            // Container(
            // child:
            Padding(
              padding: const EdgeInsets.only(
                left: 27,
                right: 27,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // children: [
                  Text(
                    "150 Interviews",
                    style: TextStyle(
                      fontSize: 12,
                      // color: Color(0xFFAB218D),
                      color: AppColors.trial2DarkRed,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SkillTag(
                              text: "Designer",
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            // Container(
                            //   width: 91,
                            //   height: 30,
                            //   padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                            //   decoration: BoxDecoration(
                            //     border: Border.all(
                            //       color: Color(0xFFFFEFFC),
                            //       // width: 1,
                            //     ),
                            //     borderRadius: BorderRadius.circular(20),
                            //   ),
                            //   child: Text(
                            //     "Project Owner",
                            //     style: TextStyle(
                            //       fontSize: 11,
                            //       fontWeight: FontWeight.w400,
                            //       fontFamily: 'Poppins',
                            //       color: Color(0xFFAB218D),
                            //     ),
                            //   ),
                            //   // color: Color(0xFFFFEFFC),
                            // ),
                            SkillTag(text: "Project Owner"),
                            SizedBox(
                              width: 8,
                            ),
                            // Container(
                            //   width: 91,
                            //   height: 30,
                            //   padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                            //   decoration: BoxDecoration(
                            //     border: Border.all(
                            //       color: Color(0xFFFFEFFC),
                            //       // width: 1,
                            //     ),
                            //     borderRadius: BorderRadius.circular(20),
                            //   ),
                            //   child: Text(
                            //     "Mongo DB",
                            //     style: TextStyle(
                            //       fontSize: 11,
                            //       fontWeight: FontWeight.w400,
                            //       fontFamily: 'Poppins',
                            //       color: Color(0xFFAB218D),
                            //     ),
                            //   ),
                            //   // color: Color(0xFFFFEFFC),
                            // ),
                            SkillTag(
                              text: "Mongo DB",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            // Container(
                            //   width: 91,
                            //   height: 30,
                            //   padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                            //   decoration: BoxDecoration(
                            //     border: Border.all(
                            //       color: Color(0xFFFFEFFC),
                            //       // width: 1,
                            //     ),
                            //     borderRadius: BorderRadius.circular(20),
                            //   ),
                            //   child: Text(
                            //     "Communication Skills",
                            //     style: TextStyle(
                            //       fontSize: 11,
                            //       fontWeight: FontWeight.w400,
                            //       fontFamily: 'Poppins',
                            //       color: Color(0xFFAB218D),
                            //     ),
                            //   ),
                            //   // color: Color(0xFFFFEFFC),
                            // ),
                            SkillTag(
                              text: "Communication Skills",
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 57,
                              height: 30,
                              padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  // color: Color(0xFFFFEFFC),
                                  color: AppColors.trial1BgRed,
                                  // width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "+11",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  // color: Color(0xFFAB218D),
                                  color: AppColors.trial2DarkRed,
                                ),
                              ),
                              // color: Color(0xFFFFEFFC),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            // Container(
                            //   width: 91,
                            //   height: 30,
                            //   padding: EdgeInsets.fromLTRB(12, 6, 12, 7),
                            //   decoration: BoxDecoration(
                            //     border: Border.all(
                            //       color: Color(0xFFFFEFFC),
                            //       // width: 1,
                            //     ),
                            //     borderRadius: BorderRadius.circular(20),
                            //   ),
                            //   child: Text(
                            //     "Mongo DB",
                            //     style: TextStyle(
                            //       fontSize: 11,
                            //       fontWeight: FontWeight.w400,
                            //       fontFamily: 'Poppins',
                            //       color: Color(0xFFAB218D),
                            //     ),
                            //   ),
                            //   // color: Color(0xFFFFEFFC),
                            // ),
                            CustomButton(
                              text: "+ Add more",
                              onPressed: () {},
                              width: 108,
                              height: 30,
                              // color: Color(0xFFDEE5D8),
                              color: AppColors.surfaceVariant,
                              // textColor: Color(0xFF499359),
                              textColor: AppColors.primary,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              radius: 20,

                              // hoverTextColor: Color(0xFF499359),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Container(
                    // width: 350,
                    width: screenWidth,
                    // height: 180,
                    // height: 220,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius: 0.1,
                        ),
                      ],
                      // color: Color(0xFFFFFFFF),
                      color: AppColors.onPrimary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        right: 13,
                        bottom: 21,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              // color: Color(0xFF002204),
                              color: AppColors.onPrimaryContainer,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Collaboration platform that helps non-tech founders build scalable products by connecting them with tech founders. The platform will streamline the development process and provide access to expertise and resources that non-tech founders might not have. It will help bridge the gap between the tech and non-tech worlds, and democratize access to technology...",
                            style: TextStyle(
                              fontSize: 10,
                              // fontWeight: FontWeight.w700,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins-Regular',
                              // color: Color(0xFF101F10),
                              color: AppColors.onSecondaryContainer,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                // color: Color(0xFF499359),
                                color: AppColors.primary,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 13,
                  ),

                  Container(
                    // width: 350,
                    width: screenWidth,
                    // // height: 180,
                    // height: 349,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius: 0.1,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        right: 13,
                        bottom: 21,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Experience",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              // color: Color(0xFF002204),
                              color: AppColors.onPrimaryContainer,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      AppAssets.profileScreenImage3,
                                      fit: BoxFit.cover,
                                      // height: 131,
                                      // width: 390,
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Freelance Designer",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            // color: Color(0xFF002204),
                                            color: AppColors.onPrimaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "Self Employed | Remote",
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',
                                            // color: Color(0xFF424940),
                                            color: AppColors.onSurfaceVariant,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Jun 2021 - Present | ",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                // color: Color(0xFF72796F),
                                                color: AppColors.outline,
                                              ),
                                            ),
                                            Text(
                                              "3yr 3m",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins',
                                                // color: Color(0xFF499359),
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Work with clients and web studios as freelancer.  Work in next areas: eCommerce web projects; creative landing pages; iOs and Android apps; corporate web sites and corporate identity sometimes.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    // color: Color(0xFF101F10),
                                    color: AppColors.onSecondaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      AppAssets.profileScreenImage3,
                                      fit: BoxFit.cover,
                                      // height: 131,
                                      // width: 390,
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Freelance Designer",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            // color: Color(0xFF002204),
                                            color: AppColors.onPrimaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "Self Employed | Remote",
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',
                                            // color: Color(0xFF424940),
                                            color: AppColors.onSurfaceVariant,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Jun 2021 - Present | ",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                // color: Color(0xFF72796F),
                                                color: AppColors.outline,
                                              ),
                                            ),
                                            Text(
                                              "3yr 3m",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Poppins',
                                                // color: Color(0xFF499359),
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Work with clients and web studios as freelancer.  Work in next areas: eCommerce web projects; creative landing pages; iOs and Android apps; corporate web sites and corporate identity sometimes.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    // color: Color(0xFF101F10),
                                    color: AppColors.onSecondaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   height: 13,
                          // ),
                          // SizedBox(
                          //   height: 48,
                          // ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 13,
                  ),

                  Container(
                    // width: 350,
                    width: screenWidth,
                    // height: 184,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius: 0.1,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        16,
                        14,
                        10,
                        21,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Education",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              // color: Color(0xFF002204),
                              color: AppColors.onPrimaryContainer,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                AppAssets.profileScreenImage4,
                                fit: BoxFit.cover,
                                // height: 131,
                                // width: 390,
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Msc in Information & Architecture, ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  Text(
                                    "University of Moscow ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  Text(
                                    "2019 - 2022",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      // color: Color(0xFF52634F),
                                      color: AppColors.secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                AppAssets.profileScreenImage4,
                                fit: BoxFit.cover,
                                // height: 131,
                                // width: 390,
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bsc in Information & Architecture, ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  Text(
                                    "University of Moscow ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  Text(
                                    "2019 - 2022",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                      // color: Color(0xFF52634F),
                                      color: AppColors.secondary,
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
                    height: 13,
                  ),

                  Container(
                    // width: 350,
                    width: screenWidth,
                    // height: 180,
                    // height: 220,

                    decoration: BoxDecoration(
                      // border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius: 0.1,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        right: 13,
                        bottom: 21,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Goals",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              // color: Color(0xFF002204),
                              color: AppColors.onPrimaryContainer,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            // "Building a successful and sustainable business that solves a problem or meets a need in the market Creating a product or service that is innovative scalable and profitable and requires a lot of hard work dedication and strategic thinking Creating a product or service that is innovative scalable and profitable and requires a lot of hard work dedication and strategic thinking.",
                            "Building a successful and sustainable business that solves a problem or meets a need in the market. Creating a product or service that is innovative, scalable, and profitable, and requires a lot of hard work, dedication, and strategic thinking. Creating a product or service that is innovative, scalable, and profitable, and requires a lot of hard work, dedication, and strategic thinking.",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              // fontFamily: 'Montserrat',
                              fontFamily: 'Poppins',
                              // color: Color(0xFF101F10),
                              color: AppColors.onSecondaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 13,
                  ),

                  Container(
                    // width: 350,
                    width: screenWidth,
                    // height: 180,
                    // height: 220,

                    decoration: BoxDecoration(
                      // border: Border.all(),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius: 0.1,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 16,
                        right: 13,
                        bottom: 21,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hiring For",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              // color: Color(0xFF002204),
                              color: AppColors.onPrimaryContainer,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            // "Building a successful and sustainable business that solves a problem or meets a need in the market Creating a product or service that is innovative scalable and profitable and requires a lot of hard work dedication and strategic thinking Creating a product or service that is innovative scalable and profitable and requires a lot of hard work dedication and strategic thinking.",
                            "Building a successful and sustainable business that solves a problem or meets a need in the market. Creating a product or service that is innovative, scalable, and profitable, and requires a lot of hard work, dedication, and strategic thinking. Creating a product or service that is innovative, scalable, and profitable, and requires a lot of hard work, dedication, and strategic thinking.",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              // fontFamily: 'Montserrat',
                              fontFamily: 'Poppins',
                              // color: Color(0xFF101F10),
                              color: AppColors.onSecondaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    // height: 13,
                    height: 231,
                  ),

                  // ],
                  // ),
                ],
              ),
            ),
            // ),
          ],
        ),
      ),
      // ),
    );
  }
}

class SkillTag extends StatelessWidget {
  final String? text;
  const SkillTag({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      // height: 30,
      height: 45,
      padding: EdgeInsets.only(
        left: 12,
        // top: 6,
        top: 5,
        right: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          // color: Color(0xFFFFEFFC),
          color: AppColors.trial1BgRed,
          // width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          // color: Color(0xFFAB218D),
          color: AppColors.trial2DarkRed,
        ),
      ),
      // color: Color(0xFFFFEFFC),
    );
  }
}
