import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukleushive_app/data/constants/app_assets.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/views/mobile_view/common/custom_button.dart';
import 'package:nukleushive_app/main.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:nukleushive_app/views/mobile_view/auth/responser.dart';
import 'package:nukleushive_app/views/mobile_view/auth/email_login_page.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String dropdownValue = '+91'; // default value

  // Refer once

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          // Color(0xFFFFFFFF),
          AppColors.onPrimary,
      appBar: AppBar(
        backgroundColor:
            //  Color(0xFF499359),
            AppColors.primary,
        shadowColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        //bottom: false,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth,
              //height: screenHeight *,
              child: Image.asset(
                // AppAssets.signupScreenImage2,
                AppAssets.signupScreenImage3,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Hi, Nice to see you!",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF000000),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Welcome to our platform!",
                    style: TextStyle(
                      fontSize: 12,
                      // color: Color(0xFF72796F),
                      color: AppColors.outline,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 29,
                          right: 29,
                        ),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  // width: 55,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child:

                                      // Drop Down List

                                      DropdownButton<String>(
                                    value: dropdownValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>['+91', '+11', '+12', '+13']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),

                                  // TextField(
                                  //   controller: _numberController,
                                  //   keyboardType: TextInputType.number,
                                  //   decoration: InputDecoration(
                                  //     // labelText: 'Number',
                                  //     border: OutlineInputBorder(
                                  //       borderRadius:
                                  //           BorderRadius.circular(5.0),
                                  //     ),
                                  //     hintText: "+91",
                                  //     hintStyle: TextStyle(
                                  //       fontSize: 12,
                                  //       fontWeight: FontWeight.w400,
                                  //     ),
                                  //     // fillColor: Color(0xFFEEEEEE),
                                  //     fillColor: Colors.grey,
                                  //   ),
                                  // ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  // width: 272,
                                  width: screenWidth * 0.69,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: TextField(
                                    controller: _numberController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      // labelText: 'Number',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      hintText: "Enter Mobile Number",
                                      // fillColor: Color(0xFFEEEEEE),
                                      fillColor: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 13.0),
                            Container(
                              width: screenWidth,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFEEEEEE),
                              ),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  // labelText: 'Password',
                                  hintText: "Enter Password",
                                  // fillColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: _isChecked,
                                  activeColor:
                                      //  Color(0xFF499359),
                                      AppColors.primary,
                                  onChanged: (bool? value) {
                                    setState(
                                      () {
                                        _isChecked = value!;
                                      },
                                    );
                                  },
                                ),
                                Text(
                                  // "I agree to the terms and conditions",
                                  "I agree to the",
                                  style: TextStyle(
                                    fontSize: 12,
                                    // color: Color(0xFF72796F),
                                    color: AppColors.outline,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "terms and conditions.",
                                    style: TextStyle(
                                      // color: Color(0xFF499359),
                                      color: AppColors.primary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   //height: 17,
                      //   height: 10,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Checkbox(
                      //       value: _isChecked,
                      //       activeColor: Color(0xFF499359),
                      //       onChanged: (bool? value) {
                      //         setState(
                      //           () {
                      //             _isChecked = value!;
                      //           },
                      //         );
                      //       },
                      //     ),
                      //     Text(
                      //       "I agree to the terms and conditions",
                      //       style: TextStyle(
                      //         fontSize: 12,
                      //         color: Color(0xFF499359),
                      //         fontFamily: 'Poppins',
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        //height: 39,
                        height: 10,
                      ),
                      CustomSignupButton(),
                      SizedBox(
                        //height: 27,
                        height: 10,
                      ),
                      Text(
                        "Or Sign Up With",
                        style: TextStyle(
                          fontSize: 12,
                          // color: Color(0xFF72796F),
                          color: AppColors.outline,

                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        // height: 24,
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomEmailGoogleButton(
                            text: "Email",
                          ),
                          // SizedBox(
                          //   width: 20,
                          // ),
                          // CustomButton(
                          //   text: "Google",
                          //   onPressed: () {},
                          //   textColor: Color(0xFF1A1C19),
                          //   // color: Color(0xFFDEE5D8),
                          //   fontSize: 14,
                          //   fontWeight: FontWeight.w500,
                          //   width: 149,
                          //   height: 37,
                          //   radius: 6,
                          // ),

                          // Custom Button for Google

                          CustomEmailGoogleButton(
                            text: "Google",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account!",
                            style: TextStyle(
                              fontSize: 12,
                              // color: Color(0xFF1A1C19),
                              color: AppColors.onSurface,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButtonLoginNow(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSignupButton extends ConsumerWidget {
  const CustomSignupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      text: "SIGN UP",
      onPressed: () {
        ref.read(navigationProvider.notifier).state = 'foundersDashboardScreen';
      },
      width: 332,
      height: 48,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      // color: Color(0xFF499359),
      color: AppColors.primary,
      radius: 11,
    );
  }
}

class TextButtonLoginNow extends ConsumerWidget {
  const TextButtonLoginNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () {
        ref.read(navigationProvider.notifier).state = 'loginScreen';
      },
      child: Text(
        "Login Now!",
        style: TextStyle(
          // color: Color(0xFF499359),
          color: AppColors.primary,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}

class CustomEmailGoogleButton extends StatelessWidget {
  final String? text;

  const CustomEmailGoogleButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text!,
      onPressed: () {},
      // onPressed: () {
      //   if (text == "Google") {
      //     return signInWithGoogle();
      //   } else if (text == "Email") {
      //     return EmailLoginPage();
      //   }
      // },
      // textColor: Color(0xFF1A1C19),
      textColor: AppColors.onBackground,
      // color: Color(0xFFDEE5D8),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      width: 149,
      height: 37,
      radius: 6,
    );
  }
}

// Refer once

// final FirebaseAuth _auth = FirebaseAuth.instance;
// final GoogleSignIn googleSignIn = GoogleSignIn();

// Future<Responser<UserCredential?>> signInWithGoogle() async {
//   // Trigger the Google authentication flow
//   final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

//   // Obtain the auth details from the Google SignIn object
//   final GoogleSignInAuthentication googleAuth =
//       await googleSignInAccount!.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth.accessToken,
//     idToken: googleAuth.idToken,
//   );

//   // Once signed in, return the UserCredential
//   // return await _auth.signInWithCredential(credential);
//   // Check Once
//   UserCredential? userCredential = await _auth.signInWithCredential(credential);
//   return Responser(
//     message: 'Success',
//     isSuccess: true,
//     data: userCredential,
//   );
// }
