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
                  borderColor: const Color.fromARGB(255, 237, 237, 237),
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
                      children: [
                        BrokerCard(
                          image: AssetImage('assets/hdfc.png'),
                          text: "HDFC Securities",
                        ),
                        BrokerCard(
                          image: AssetImage('assets/zeroda.png'),
                          text: "Zerodha",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BrokerCard(
                            image: AssetImage('assets/icici.png'),
                            text: "ICICI Direct"),
                        BrokerCard(
                          image: AssetImage('assets/groww.png'),
                          text: "Groww",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BrokerCard(
                            image: AssetImage('assets/stockedge.png'),
                            text: "Stock Edge"),
                        BrokerCard(
                            image: AssetImage('assets/upstox.png'),
                            text: "Upstox"),
                      ],
                    ),
                    Row(
                      children: [
                        BrokerCard(
                          image: AssetImage('assets/demat.png'),
                          text: "Paytm Money",
                        ),
                        BrokerCard(
                          image: AssetImage('assets/angel.png'),
                          text: "Angel Broking",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/plan');
          },
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 33, 33, 40),
        ));
  }
}
