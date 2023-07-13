import 'package:flutter/material.dart';
import 'package:swift_money/investinfo/inv1.dart';

class InvestExperience2Page extends StatefulWidget {
  @override
  _InvestExperience2PageState createState() => _InvestExperience2PageState();
}

class _InvestExperience2PageState extends State<InvestExperience2Page> {
  late String selectedOption;

  final List<String> experienceLevels = [
    "<₹50,000 a month",
    '₹50K to ₹1.5L a month',
    '₹1.5L to ₹2.5L a month',
    '₹2.5L to ₹3.5L a month',
    '>₹3.5L a month',
  ];

  @override
  void initState() {
    super.initState();
    selectedOption = experienceLevels.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'assets/back.png',
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("What is your monthly in-hand income after taxes?",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Text('This helps us recommend the right investment amount',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.black))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: experienceLevels.length,
                itemBuilder: (context, index) {
                  final level = experienceLevels[index];
                  return Card(
                    color: level == selectedOption
                        ? Color.fromARGB(255, 33, 33, 40)
                        : Colors.white,
                    child: ListTile(
                      title: Text(
                        level,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: level == selectedOption
                              ? Colors.white
                              : Color.fromARGB(255, 33, 33, 40),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          selectedOption = level;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 42.5),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InvestExperience1Page()),
                  );
                },
                color: Color.fromARGB(255, 33, 33, 40),
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 150.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  final String selectedOption;

  NextPage(this.selectedOption);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('Selected Experience Level: $selectedOption'),
      ),
    );
  }
}
