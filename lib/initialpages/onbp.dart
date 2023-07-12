import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swift_money/auth/gmail.dart';

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
            'assets/onbp.svg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(top: -10, child: Image.asset('assets/photo.png')),
        Positioned(
          bottom: 50,
          left: 22.5,
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GmailPage()),
              );
            },
            color: Color.fromARGB(255, 33, 33, 40),
            textColor: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 122.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Start Investing',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    ));
  }
}
