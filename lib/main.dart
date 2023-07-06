import 'package:flutter/material.dart';
import 'package:swift_money/auth/gmail.dart';
import 'package:swift_money/auth/otp.dart';
import 'package:swift_money/initialpages/onbp1.dart';
import 'package:swift_money/initialpages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingPage1(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => SplashScreen(),
      //   '/gmail': (context) => GmailPage(),
      //   '/otp': (context) => OtpPage(),
      //   '/onbp1': (context) => OnboardingPage1(),
    );
  }
}
