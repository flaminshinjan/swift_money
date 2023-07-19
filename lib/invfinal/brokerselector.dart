import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:swift_money/components/broker.dart';

class BrokerSelector extends StatefulWidget {
  const BrokerSelector({super.key});

  @override
  State<BrokerSelector> createState() => _BrokerSelectorState();
}

class _BrokerSelectorState extends State<BrokerSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Select Investment Broker",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: OutlineSearchBar(
                borderRadius: BorderRadius.circular(30),
                borderColor: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 15),
                backgroundColor: Colors.white,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                textStyle: TextStyle(
                  color: Colors.black,
                ),
                searchButtonIconColor: Colors.grey,
                clearButtonIconColor: Colors.grey,
                onSearchButtonPressed: (value) {
                  print(value);
                },
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
