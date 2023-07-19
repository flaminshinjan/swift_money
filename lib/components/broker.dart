import 'package:flutter/material.dart';

class BrokerCard extends StatelessWidget {
  final ImageProvider image;
  final String text;

  BrokerCard({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side:
              BorderSide(color: Color.fromARGB(87, 237, 237, 237), width: 1.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: const Color.fromARGB(255, 237, 237, 237), width: 1.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(left: 60.0, right: 60, top: 25),
                child: Image(image: image, height: 50, width: 50),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
