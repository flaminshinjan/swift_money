import 'package:flutter/material.dart';
import 'package:swift_money/invfinal/brokerselector.dart';

class SwipeableButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.horizontal,
      onDismissed: (direction) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BrokerSelector()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 600,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 35, 159, 29),
            ),
            color: Color.fromARGB(56, 76, 175, 79),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 12.5,
                child: Text(
                  'Swipe to Start',
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 140, 28),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
