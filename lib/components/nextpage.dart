import 'package:flutter/material.dart';

class CustomInkWellButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  CustomInkWellButton({required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(96, 0, 0, 0), width: 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 62, vertical: 12.0),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18.0,
              color: Color.fromARGB(95, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
