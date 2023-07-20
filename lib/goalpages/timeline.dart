import 'package:flutter/material.dart';
import 'package:swift_money/components/appbar.dart';
import 'package:swift_money/components/textfield.dart';
import 'package:swift_money/components/nextpage.dart';
import 'package:swift_money/goalpages/money.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "Let's make a timeline!"),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "In how much time?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Column(
              children: [
                CustomTextField(
                  hintText: "Enter Months/Years",
                  textStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  borderColor: Colors.black,
                ),
                Text("Or",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                CustomInkWellButton(
                  text: "I'm not sure about time.",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Timeline()),
                    );
                  },
                ),
                SizedBox(
                  height: 240,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoneySelector()),
                    );
                  },
                  color: Color.fromARGB(255, 33, 33, 40),
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 160.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
