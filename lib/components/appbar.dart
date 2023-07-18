import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final bool showIcon;

  CustomAppBar({required this.text, this.showIcon = true});

  @override
  Size get preferredSize => Size.fromHeight(300);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: Color.fromARGB(255, 33, 33, 40),
      child: Stack(
        children: [
          if (showIcon)
            Positioned(
              top: 60,
              left: 10,
              child: IconButton(
                icon: Image.asset(
                  'assets/back2.png',
                  height: 50,
                ),
                onPressed: () {
                  // Add any action you want when the icon is pressed.
                },
              ),
            ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
