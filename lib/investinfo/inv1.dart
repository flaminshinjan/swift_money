import 'package:flutter/material.dart';
import 'package:swift_money/investinfo/inv.dart';
import 'package:swift_money/investinfo/inv2.dart';

class InvestExperience1Page extends StatefulWidget {
  @override
  _InvestExperience1PageState createState() => _InvestExperience1PageState();
}

class _InvestExperience1PageState extends State<InvestExperience1Page> {
  late String selectedOption;

  final List<String> experienceLevels = [
    "I can't take any portfolio drop",
    'A drop between 5% - 10%',
    'A drop between 11% - 20%',
    'A drop greater than 20%',
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'How much of a temporary drop in portfolio value could you handle?',
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
                        builder: (context) => InvestExperience2Page()),
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
