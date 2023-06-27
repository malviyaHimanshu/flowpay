import 'package:flowpay/components/paymentdetails.dart';
import 'package:flutter/material.dart';
import 'chainselect.dart';

Future<dynamic> bottomsheet(BuildContext context, String mode) {
  return showModalBottomSheet(
    elevation: 20,
    backgroundColor: Colors.grey[900],
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25))),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.only(bottom: 50, top: 20, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                )
              ],
            ),
            Text(
              "Choose a chain",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 24,
            ),
            chainselect(
              image: "https://cryptologos.cc/logos/flow-flow-logo.png",
              chain: "Flow",
              mobileNo: '7339933495',
              mode: mode,
            ),
            SizedBox(
              height: 15,
            ),
            chainselect(
              image:
                  "https://blog.logomyway.com/wp-content/uploads/2021/11/Ethereum-logo.png",
              chain: "Ethereum",
              mobileNo: '7339933495',
              mode: mode,
            ),
            SizedBox(
              height: 15,
            ),
            chainselect(
              image:
                  "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png",
              chain: "Solana",
              mobileNo: '7339933495',
              mode: mode,
            ),
            SizedBox(
              height: 15,
            ),
            chainselect(
              image:
                  "https://github.com/jashwanth0712/flowpay/blob/main/flowpay/assets/icons/rupee.png?raw=true",
              chain: "Rupee",
              mobileNo: '7339933495',
              mode: mode,
            ),
          ],
        ),
      );
    },
  );
}
