import 'package:flutter/material.dart';
import 'package:swift_money/investinfo/inv1.dart';

class InvestExperiencePage extends StatefulWidget {
  @override
  _InvestExperiencePageState createState() => _InvestExperiencePageState();
}

class _InvestExperiencePageState extends State<InvestExperiencePage> {
  late String selectedOption;

  final List<String> experienceLevels = [
    "I have never invested before",
    'Beginner ( 1-3 years)',
    'Intermediate ( 4-7 years)',
    'Experienced (7 Years+)',
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
                Text("What's your investing experience?",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Text('We need this to design your portfolio',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.black))
              ],
            ),
            const SizedBox(
              height: 100,
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
