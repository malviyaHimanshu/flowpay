import 'package:flutter/material.dart';
import 'package:scan/scan.dart';
import 'sendcrypto.dart';
class ScanPage extends StatelessWidget {
  ScanController controller = ScanController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(
          children: [
            ScanView(
              controller: controller,
              scanAreaScale: .7,
              scanLineColor: Colors.green,
              onCapture: (data) {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> SendCrypto(chain: 'Rupee', image: 'https://github.com/jashwanth0712/flowpay/blob/main/flowpay/assets/icons/rupee.png?raw=true' )
                )).then((value) {
                  controller.resume();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
