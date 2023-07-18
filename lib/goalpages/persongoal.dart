import 'package:flutter/material.dart';

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
        title: Text("Choose a goal"),
        backgroundColor: Color.fromARGB(255, 33, 33, 40),
      ),
    );
  }
}
