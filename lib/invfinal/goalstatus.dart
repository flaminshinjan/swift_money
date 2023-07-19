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
        title: Text("Goal Status"),
      ),
    );
  }
}
