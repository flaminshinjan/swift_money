import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: -10,
          bottom: -10,
          left: -10,
          right: -10,
          child: SvgPicture.asset(
            'assets/onbp1.svg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
            child: Column(
          children: [
            const Text('Onboarding Page 1'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gmail');
              },
              child: const Text('Gmail'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otp');
              },
              child: const Text('OTP'),
            ),
          ],
        ))
      ],
    ));
  }
}
