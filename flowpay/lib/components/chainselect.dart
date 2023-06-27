import 'package:flowpay/components/sendcrypto.dart';
import 'package:flutter/material.dart';
import 'paymentdetails.dart';

class chainselect extends StatelessWidget {
  final String chain;
  final String image;
  final String mobileNo;
  final String mode;

  const chainselect({
    required this.chain,
    required this.image,
    required this.mobileNo,
    required this.mode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        if (mode == 'qr') {
          if (chain == "Rupee") {
            showQR(context, mobileNo, 'upi');
          } else {
            showQR(context, mobileNo, chain.toLowerCase().substring(0, 3));
          }
        } else if (mode == 'send') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SendCrypto(
                      chain: chain,
                      image: image,
                    )),
          );
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              image,
              height: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              chain,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
