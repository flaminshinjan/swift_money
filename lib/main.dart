import 'package:flutter/material.dart';
import 'package:swift_money/auth/gmail.dart';
import 'package:swift_money/auth/otp.dart';
import 'package:swift_money/initialpages/onbp.dart';
import 'package:swift_money/initialpages/splash.dart';
import 'package:swift_money/invfinal/plan.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/gmail': (context) => GmailPage(),
        '/otp': (context) => OtpPage(),
        '/onbp': (context) => OnboardingPage1(),
        '/plan': (context) => PlanPage(),
      },
    );
  }
}
