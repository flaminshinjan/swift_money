import 'package:flutter/material.dart';
import 'package:swift_money/components/investcards.dart';
import 'package:swift_money/goalpages/timeline.dart';

class SeperateGoalSelector extends StatefulWidget {
  const SeperateGoalSelector({super.key});

  @override
  State<SeperateGoalSelector> createState() => _SeperateGoalSelectorState();
}

class _SeperateGoalSelectorState extends State<SeperateGoalSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Text(
            "Choose a goal",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  'assets/back2.png',
                )),
          ),
          backgroundColor: Color.fromARGB(255, 33, 33, 40),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 579,
            width: 382,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 234, 234),
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                  color: const Color.fromARGB(255, 200, 199, 199), width: 1.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.25),
                      child: InvestCard(
                        height: 111,
                        width: 159,
                        text: "My Vacation",
                        imagePath: 'assets/coins.png',
                        borderColor: Color.fromARGB(255, 40, 148, 235),
                        textColor: Color.fromARGB(255, 13, 51, 82),
                        color: Color.fromARGB(76, 41, 198, 226),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Timeline()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.25),
                      child: InvestCard(
                        height: 111,
                        width: 159,
                        text: "My Car",
                        imagePath: 'assets/coins.png',
                        borderColor: Color.fromARGB(255, 235, 63, 40),
                        textColor: Color.fromARGB(255, 77, 21, 13),
                        color: Color.fromARGB(35, 239, 66, 40),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.25),
                      child: InvestCard(
                          height: 111,
                          width: 159,
                          text: "My Home",
                          imagePath: 'assets/coins.png',
                          borderColor: Color.fromARGB(255, 40, 235, 76),
                          textColor: Color.fromARGB(255, 13, 82, 35),
                          color: Color.fromARGB(44, 41, 226, 99)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.25),
                      child: InvestCard(
                          height: 111,
                          width: 159,
                          text: "My Bike",
                          imagePath: 'assets/coins.png',
                          borderColor: Color.fromARGB(255, 59, 40, 235),
                          textColor: Color.fromARGB(255, 13, 14, 82),
                          color: Color.fromARGB(51, 41, 90, 226)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.25),
                      child: InvestCard(
                          height: 111,
                          width: 159,
                          text: "My Laptop",
                          imagePath: 'assets/coins.png',
                          borderColor: Color.fromARGB(255, 235, 40, 105),
                          textColor: Color.fromARGB(255, 82, 13, 38),
                          color: Color.fromARGB(32, 226, 41, 152)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.25),
                      child: InvestCard(
                          height: 111,
                          width: 159,
                          text: "My Travel",
                          imagePath: 'assets/coins.png',
                          borderColor: Color.fromARGB(255, 235, 229, 40),
                          textColor: Color.fromARGB(255, 82, 80, 13),
                          color: Color.fromARGB(65, 217, 226, 41)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(14.25),
                  child: InvestCard(
                      height: 111,
                      width: 349,
                      text: "My Aspirations",
                      imagePath: 'assets/coins.png',
                      borderColor: Color.fromARGB(255, 0, 0, 0),
                      textColor: Color.fromARGB(255, 13, 51, 82),
                      color: Color.fromARGB(226, 252, 252, 252)),
                ),
              ],
            ),
          ),
        ));
  }
}
