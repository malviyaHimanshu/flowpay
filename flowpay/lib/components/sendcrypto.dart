import 'dart:async';

import 'package:flowpay/components/successpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SendCrypto extends StatelessWidget {
  final String chain;
  final String image;

  const SendCrypto({super.key, required this.chain, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Enter Payment Details",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              autofocus: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'UPI ID',
                contentPadding: EdgeInsets.all(20),
                icon: Icon(
                  Icons.account_balance_rounded,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
              ],
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'Amount',
                icon: Image.network(
                  image,
                  width: 25,
                ),
                contentPadding: EdgeInsets.all(20),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Timer(Duration(seconds: 1), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuccessPage()));
                });
              },
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple,
                  border: Border.all(color: Colors.deepPurple, width: 1),
                ),
                child: Text(
                  "Pay",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
