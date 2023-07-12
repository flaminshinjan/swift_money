import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Color.fromARGB(255, 33, 33, 40),
      textColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 160),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'Next',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
