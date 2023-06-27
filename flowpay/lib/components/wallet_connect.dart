import 'package:flutter/material.dart';
import 'qrscannerpage.dart';
class WalletConnect extends StatefulWidget {
  const WalletConnect({Key? key}) : super(key: key);

  @override
  State<WalletConnect> createState() => _WalletConnectState();
}

class _WalletConnectState extends State<WalletConnect> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('This is a wallet connect page.'),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QrScannerPage()),
            );
          }, child: Text("Scan"))
        ],
      ),
    );
  }
}
