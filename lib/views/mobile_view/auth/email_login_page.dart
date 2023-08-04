// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class EmailLoginPage extends StatefulWidget {
//   @override
//   _EmailLoginPageState createState() => _EmailLoginPageState();
// }

// class _EmailLoginPageState extends State<EmailLoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   // final FirebaseAuth _auth = FirebaseAuth.instance;

//   void _signInWithEmail() async {
//     final email = _emailController.text.trim();
//     final password = _passwordController.text.trim();

//     if (_formKey.currentState!.validate()) {
//       final result = await signInWithEmail(email, password);

//       // Check if the sign-in was successful
//       if (result.user != null) {
//         // The user is signed in
//       } else {
//         // There was an error signing in
//         final snackBar = SnackBar(content: Text(result.toString()));
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 controller: _emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email address';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: _signInWithEmail,
//                 child: Text('Sign in'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Future<UserCredential> signInWithEmail(String email, String password) async {
//   // Sign the user in with their email and password
//   return await FirebaseAuth.instance.signInWithEmailAndPassword(
//     email: email,
//     password: password,
//   );
// }
