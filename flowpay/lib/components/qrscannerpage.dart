import 'dart:io';
import 'package:flutter/material.dart';
import 'package:scan/scan.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'scanpage.dart';
class QrScannerPage extends StatefulWidget {
  const QrScannerPage({Key? key}) : super(key: key);

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  String _platformVersion = 'Unknown';

  String qrcode = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await Scan.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Column(
            children: [
              Text('Running on: $_platformVersion\n'),
              Wrap(
                children: [

                  ElevatedButton(
                    child: Text('go scan page'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) {
                            return ScanPage();
                          }));
                    },
                  ),
                ],
              ),
              Text('scan result is $qrcode'),
            ],
          ),
        ),
      },
    );
  }
}
