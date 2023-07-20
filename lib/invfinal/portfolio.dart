import 'package:flutter/material.dart';
import 'package:swift_money/components/portfoliocard.dart';
import 'package:swift_money/invfinal/goalstatus.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 33, 33, 40),
            expandedHeight: 100.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Hello Preeti 👋',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Image.asset(
                  'assets/bell.png',
                  height: 30,
                ),
                onPressed: () {
                  // Add action for the bell icon here.
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Column(
                  children: [
                    PortfolioCard(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Container(
                          height: 370,
                          child: Image.asset(
                            'assets/portfolio1.png',
                            height: 300,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Container(
                          height: 200,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/portfolio2.png',
                                height: 300,
                                width: 170,
                              ),
                              SizedBox(width: 1),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GoalStatus()),
                                    );
                                  },
                                  icon: Image.asset(
                                    'assets/portfolio3.png',
                                    height: 250,
                                    width: 190,
                                  )),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Just for some content below the card
            ]),
          ),
        ],
      ),
    );
  }
}
