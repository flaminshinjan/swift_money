import 'package:flutter/material.dart';

class InvestCard extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final String imagePath;
  final Color color;
  final Color textColor;
  final Color borderColor;

  InvestCard({
    required this.height,
    required this.width,
    required this.text,
    required this.imagePath,
    required this.color,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: borderColor, width: 1.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child: Image.asset(
              imagePath,
              height: 20,
              width: 20,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
