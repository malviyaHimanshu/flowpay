import 'dart:ui';
import 'package:flutter/material.dart';
import 'components/scanpage.dart';
import 'components/mainpage.dart';
import 'components/drawer.dart';
import 'components/card.dart';
import 'components/show_webview.dart';
import 'components/cardstack.dart';
class Sample extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    List imagepath = [
      'https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg',
      'https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    ];

    List cardList = [
      {
        "id": "7339933495@flo",
        "name": "Flow",
        "balance": "36.96",
        "image": "https://cryptologos.cc/logos/flow-flow-logo.png",
      },
      {
        "id": "7339933495@eth",
        "name": "Ethereum",
        "balance": "3.31",
        "image":
            "https://blog.logomyway.com/wp-content/uploads/2021/11/Ethereum-logo.png",
      },
      {
        "id": "7339933495@sol",
        "name": "Solana",
        "balance": "45.02",
        "image":
            "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png",
      },
      {
        "id": "7339933495@upi",
        "name": "Rupee",
        "balance": "3,500",
        "image":
            "https://github.com/jashwanth0712/flowpay/blob/main/flowpay/assets/icons/rupee.png?raw=true",
      }
    ];

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
          Container(
            height: 300,
            child: CardStack(cards: cardList),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          // mainPage(),
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
              Expanded(
                child: GestureDetector(
                  child: card(
                    heading: 'View transactions',
                    subheading: 'with flowpay',
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>MyWebView( selectedUrl: 'https://razorpay-api.vercel.app/')),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      drawer: sideDrawer(),
    );
  }
}
