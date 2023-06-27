import 'dart:ui';
import 'package:flutter/material.dart';
import 'scanpage.dart';
import 'temomainpage.dart';
import 'drawer.dart';
import 'card.dart';

class Temp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.network(
              "https://raw.githubusercontent.com/jashwanth0712/flowpay/main/flowpay/assets/icons/scan.png",
              height: 25,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return ScanPage();
              }));
            },
          ),
        ],
        backgroundColor: Colors.black,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          mainPage(),
          Row(
            children: [
              card(
                heading: 'Buy Flow',
                subheading: 'with UPI',
                color: Colors.amber,
                onPressed: () {},
              ),
              card(
                heading: 'Earn 5%',
                subheading: 'By staking',
                color: Color(0xff1e00b7),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              card(
                heading: 'View transactions',
                subheading: 'with flowpay',
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      drawer: sideDrawer(),
    );
  }
}
