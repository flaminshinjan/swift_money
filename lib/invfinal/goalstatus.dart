import 'package:flutter/material.dart';

class GoalStatus extends StatefulWidget {
  const GoalStatus({super.key});

  @override
  State<GoalStatus> createState() => _GoalStatusState();
}

class _GoalStatusState extends State<GoalStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color.fromARGB(255, 33, 33, 40),
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Text("Great Going Preeti, ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Container(
                    height: 240,
                    width: 500,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 198, 202, 205)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Image.asset(
                            'assets/goalprogress.png',
                            height: 198,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 10.0,
                  ),
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 198, 202, 205)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            "Investment Progress!",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/progress.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 10.0,
                  ),
                  child: Container(
                    height: 500,
                    width: 400,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 198, 202, 205)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            "Current Status",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/graph.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0, top: 20),
                          child: Row(
                            children: [
                              Image.asset('assets/info.png', height: 15),
                              SizedBox(width: 5),
                              Text(
                                "Detailed Status",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 33, 33, 40),
                                size: 50,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 33, 33, 40),
        ));
  }
}
