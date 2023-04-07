import 'package:flutter/material.dart';
import 'package:home_ui/common_component/coinTile.dart';

import 'common_component/bottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var demoData = [
    {
      'image': 'assets/ethereum.png',
      'currency': 'ETH',
      'amount': '12.2625  ETH',
      'krw': '14,556,020 KRW'
    },
    {
      'image': 'assets/bitcoin.png',
      'currency': 'BTC',
      'amount': '0.155687  BTC',
      'krw': '14,556,020 KRW  '
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0B0B0B),
        appBar: AppBar(
          backgroundColor: Color(0xFF0B0B0B),
          leading: BackButton(
            color: const Color(0xFFA7ACCB),
            onPressed: onBackPress,
          ),
          title: const Text(
            'withdrawal',
            style: TextStyle(color: Color(0xFFA7ACCB)),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: <Widget>[
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Be sure to check before you withdrawal.',
                        style:
                            TextStyle(color: Color(0xFFA7ACCB), fontSize: 18),
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 32.0),
                      child: Text(
                        'Total Assets',
                        style:
                            TextStyle(color: Color(0xFFA7ACCB), fontSize: 16),
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        '8,752,669 KRW',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    height: 300,
                    child: ListView.separated(
                        itemBuilder: (c, i) {
                          return CoinTile(coinData: demoData[i]);
                        },
                        separatorBuilder: (c, i) {
                          return const SizedBox(height: 12);
                        },
                        itemCount: demoData.length),
                  ),
                ],
              ),
              BottomNavBar()
            ],
          ),
        ));
  }

  onBackPress() {
    if (Navigator.of(context).canPop()) {
      Navigator.pop(context);
    }
  }
}
