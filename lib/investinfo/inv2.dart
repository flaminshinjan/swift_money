import 'package:flutter/material.dart';
import 'package:swift_money/goalpages/choosegoal.dart';
import 'package:swift_money/investinfo/inv1.dart';

class InvestExperience2Page extends StatefulWidget {
  @override
  _InvestExperience2PageState createState() => _InvestExperience2PageState();
}

class _InvestExperience2PageState extends State<InvestExperience2Page> {
  double _value = 50000;
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('₹20,000'),
                        Text('₹400,000'),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.black,
                      inactiveTrackColor: Colors.black.withOpacity(0.5),
                      thumbColor: Colors.black,
                      overlayColor: Colors.black.withAlpha(32),
                      valueIndicatorColor: Colors.black,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: _value,
                      min: 20000,
                      max: 400000,
                      onChanged: (newValue) {
                        setState(() {
                          _value = newValue;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'In-hand income: ₹${_value.toInt()}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 42.5),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChooseGoalPage()),
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
