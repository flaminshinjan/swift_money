import 'package:flutter/material.dart';

class GmailPage extends StatelessWidget {
  const GmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail'),
      ),
      body: Column(
        children: [
          const Text('Gmail'),
        ],
      ),
    );
  }
}