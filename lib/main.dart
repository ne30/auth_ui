import 'package:flutter/material.dart';
import 'signIn.dart';
import 'signUp.dart';
import 'forgotPassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/forgotpass': (context) => ForgotPassword(),
      },
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SignIn(),
    );
  }
}
