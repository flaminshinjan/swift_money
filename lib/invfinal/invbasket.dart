import 'package:flutter/material.dart';
import 'package:swift_money/components/swipebutton.dart';


class Inv1Page extends StatefulWidget {
  const Inv1Page({super.key});

  @override
  State<Inv1Page> createState() => _Inv1PageState();
}

class _Inv1PageState extends State<Inv1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 33, 33, 40),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            SizedBox(width: 10),
            Text('Welcome Ishika 👋',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              icon: Image.asset(
                'assets/bell.png',
                height: 40,
              ),
              onPressed: () {
                // Add action for the bell icon here.
              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Container(
                height: 250,
                width: 400,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1, color: Color.fromARGB(255, 198, 202, 205)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 10.0, bottom: 5.0),
                      child: Text(
                        "Personalised  to achieve your goal ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Image.asset('assets/goalbasket.png'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 5.0),
              child: Text(
                "Estimates",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Container(
                height: 250,
                width: 400,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1, color: Color.fromARGB(255, 198, 202, 205)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Image.asset(
                    'assets/graph.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            SwipeableButton(),
          ],
        ),
      ),
    );
  }
}
