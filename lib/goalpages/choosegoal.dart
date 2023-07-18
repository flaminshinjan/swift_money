import 'package:flutter/material.dart';
import 'package:swift_money/components/appbar.dart';
import 'package:swift_money/goalpages/persongoal.dart';

class ChooseGoalPage extends StatefulWidget {
  const ChooseGoalPage({super.key});

  @override
  State<ChooseGoalPage> createState() => _ChooseGoalPageState();
}

class _ChooseGoalPageState extends State<ChooseGoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Let your money work for you!",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SeperateGoalSelector()),
                );
              },
              color: Color.fromARGB(255, 248, 248, 248),
              textColor: Color.fromARGB(255, 9, 176, 95),
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Achieve a specific goal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChooseGoalPage()),
                );
              },
              color: Color.fromARGB(255, 215, 243, 218),
              textColor: Color.fromARGB(255, 9, 176, 95),
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 65),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Let’s Create Wealth',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
