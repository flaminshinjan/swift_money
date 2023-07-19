import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 12.0,
          left: 12.0,
          child: Text(
            'Text in the top left corner',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: FloatingActionButton(
            onPressed: () {
              // Add your action here
            },
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
