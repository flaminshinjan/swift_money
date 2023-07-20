import 'package:flutter/material.dart';
import 'package:swift_money/components/appbar.dart';
import 'package:swift_money/goalpages/persongoal.dart';
import 'package:swift_money/invfinal/brokerselector.dart';
import 'package:swift_money/invfinal/goalstatus.dart';
import 'package:swift_money/invfinal/portfolio.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "Let’s make a plan!",
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "How would you like to invest?",
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
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  const Text(
                    'Every month on some date',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '(SIP)',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Or",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PortfolioPage()),
                );
              },
              color: Color.fromARGB(255, 215, 243, 218),
              textColor: Color.fromARGB(255, 9, 176, 95),
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 75),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Expense round off',
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
