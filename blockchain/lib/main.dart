import 'package:blockchain/pages/details.dart';
import 'package:blockchain/pages/home.dart';
import 'package:blockchain/pages/login.dart';
import 'package:blockchain/pages/otpScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.red,
          ),
      //home: HomePage(),
      routes: {
        '/': (context) => const LoginPage(),
        //'/register': (context) => const RegisterPage(),
        '/home': (context) => HomePage(),
        '/details': (context) => const Details(),
        //'/picUpload': (context) => PicUpload(),
        '/otp': (context) => const OTPScreen(),
      },
    );
  }
}
