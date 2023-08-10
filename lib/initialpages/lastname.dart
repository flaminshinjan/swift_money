import 'package:flutter/material.dart';
import 'package:swift_money/initialpages/dob.dart';
import 'package:swift_money/models/auth_credentials.dart';

class LNPage extends StatefulWidget {
  const LNPage({super.key, required String firstName});

  @override
  State<LNPage> createState() => _LNPageState();
}

class _LNPageState extends State<LNPage> {
  TextEditingController _lastNameController = TextEditingController();
  void _navigateToNextScreen() {
    // Save the first name and navigate to the next screen
    String lastName = _lastNameController.text;
    print('Collected Last Name: $lastName');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DOBPage(lastName: lastName),
      ),
    );
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter your       Last Name',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Text('Your last name',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.black))
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Enter your last name',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                TextFormField(
                  controller: _lastNameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    labelText: 'Write your last name here',
                  ),
                ),
                const SizedBox(
                  height: 287.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: _navigateToNextScreen,
                      color: Color.fromARGB(255, 33, 33, 40),
                      textColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 150.5),
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
        ),
      ),
    );
  }
}
