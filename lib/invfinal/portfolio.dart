import 'package:flutter/material.dart';
import 'package:swift_money/components/portfoliocard.dart';

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
                  ],
                ),
              ),
              SizedBox(height: 200.0), // Just for some content below the card
            ]),
          ),
        ],
      ),
    );
  }
}
