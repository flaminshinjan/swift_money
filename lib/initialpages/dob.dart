import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DOBPage extends StatefulWidget {
  const DOBPage({super.key});

  @override
  State<DOBPage> createState() => _DOBPageState();
}

class _DOBPageState extends State<DOBPage> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

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
                    Text('Enter your      birthday date',
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
                  height: 120,
                ),
                Text(
                  'Enter date of birth',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                TextField(
                  controller: dateInput,
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      labelText: "Enter Date"),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(pickedDate);
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate);
                      setState(() {
                        dateInput.text = formattedDate;
                      });
                    } else {}
                  },
                ),
                const SizedBox(
                  height: 287.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
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
