import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

Future<dynamic> showQR(BuildContext context, String mobileNum, String chain) {
  return showModalBottomSheet(
    elevation: 20,
    backgroundColor: Colors.grey[900],
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25))),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.only(bottom: 50, top: 20, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close_rounded,
                    size: 30,
                  ),
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            PaymentDetails(selectedButton: chain, mobileNum: mobileNum),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      );
    },
  );
}

class PaymentDetails extends StatelessWidget {
  final String mobileNum;
  final String selectedButton;

  PaymentDetails({required this.selectedButton, required this.mobileNum});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          QrImage(
            data: mobileNum + "@" + selectedButton,
            version: QrVersions.auto,
            size: 250,
            gapless: false,
            foregroundColor: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "UPI ID: " + mobileNum + "@" + selectedButton,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          // Text(
          //   "Scan this code to pay me",
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 22,
          //   ),
          // ),
        ],
      ),
    );
  }
}
