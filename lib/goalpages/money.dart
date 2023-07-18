import 'package:flutter/material.dart';
import 'package:swift_money/components/appbar.dart';
import 'package:swift_money/components/textfield.dart';
import 'package:swift_money/components/nextpage.dart';
import 'package:swift_money/goalpages/timeline.dart';

class MoneySelector extends StatefulWidget {
  const MoneySelector({super.key});

  @override
  State<MoneySelector> createState() => _MoneySelectorState();
}

class _MoneySelectorState extends State<MoneySelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "How much Money?"),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "How much money will be required to achieve your goals?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CustomTextField(
              hintText: "Add Money",
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
              text: "Not sure about money.",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Timeline()),
                );
              },
            ),
            SizedBox(
              height: 180,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 160.5),
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
      ),
    );
    ;
  }
}
