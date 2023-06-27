import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'package:flutter/services.dart';
import 'paymentdetails.dart';

class RecievePayment extends StatefulWidget {
  @override
  _RecievePaymentState createState() => _RecievePaymentState();
}

class _RecievePaymentState extends State<RecievePayment> {
  String _selectedButton = "ybl";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receive Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedButton = 'ybl';
                });
                _navigateToDetailsPage(context);
              },
              child: Text('Rupee'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedButton = 'flo';
                });
                _navigateToDetailsPage(context);
              },
              child: Text('Flow'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedButton = 'eth';
                });
                _navigateToDetailsPage(context);
              },
              child: Text('Ethereum'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedButton = 'sol';
                });
                _navigateToDetailsPage(context);
              },
              child: Text('Solana'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToDetailsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentDetails(
          selectedButton: _selectedButton,
          mobileNum: "6281437985",
        ),
      ),
    );
  }
}
