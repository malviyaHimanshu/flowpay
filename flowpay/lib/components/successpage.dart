import 'package:flowpay/sample.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'temp.dart';
class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Temp()));
      print("changedpage");
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Success"),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 100),
        child: Center(
          child: Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_vuliyhde.json',
            repeat: false,
          ),

        ),
      ),
    );
  }
}
