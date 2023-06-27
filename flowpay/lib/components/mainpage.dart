import 'package:flowpay/components/paymentdetails.dart';
import 'package:flutter/material.dart';
import 'bottomsheet.dart';
import 'sendcrypto.dart';

class mainPage extends StatelessWidget {
  final String chain;
  final String balance;
  final String image;
  final String id;

  const mainPage({
    Key? key,
    required this.chain,
    required this.balance,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Color.fromRGBO(255, 255, 255, 1);
    Color color1 = Color.fromARGB(255, 0, 0, 0);
    Color color2 = Color.fromARGB(255, 0, 0, 0);
    if (chain == 'Flow') {
      color1 = const Color(0xFF16FF99);
      color2 = const Color(0xFF00EF8B);
      color = Color.fromARGB(255, 0, 0, 0);
    } else if (chain == 'Ethereum') {
      color1 = const Color(0xFF00C6FF);
      color2 = const Color(0xFF0072FF);
    } else if (chain == 'Solana') {
      color1 = Color(0xFF9945FF);
      color2 = Color(0xFF14F195);
    } else if (chain == 'Rupee') {
      color1 = Color.fromARGB(255, 59, 3, 90);
      color2 = Color.fromARGB(255, 170, 95, 255);
    }
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          // color: const Color(0xFF762CD5),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: color,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "himanshu",
                    style: TextStyle(
                      color: color,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    id,
                    style: TextStyle(
                      color: color.withOpacity(0.5),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.copy,
                    color: color.withOpacity(0.5),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image.network(
                    image,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    balance,
                    style: TextStyle(
                      fontSize: 35,
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(104, 0, 0, 0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => SendCrypto(
                        //             chain: chain,
                        //             image: image,
                        //           )),
                        // );
                        bottomsheet(context, 'send');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.send_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        // if (chain == "Rupee") {
                        //   showQR(context, id.substring(0, 10), 'upi');
                        // } else {
                        //   showQR(context, id.substring(0, 10),
                        //       chain.toLowerCase().substring(0, 3));
                        // }
                        bottomsheet(context, 'qr');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.qr_code_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}