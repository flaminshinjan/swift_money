import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
          height: 150.0,
          width: 400,
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(230, 255, 255, 255),
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    '₹ 28,800',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: 40,
                  left: 10,
                  child: Text(
                    'my current value',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: 15,
                  right: 10,
                  child: Row(
                    children: [
                      Image.asset('assets/profit.png', height: 20, width: 20),
                      Text(
                        ' 5%',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₹ 27,600',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'invested value',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₹ 1,200',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'profit value',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
