import 'package:flowpay/components/paymentdetails.dart';
import 'package:flutter/material.dart';
import 'bottomsheet.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var a= '4.01';

    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 59, 3, 90),
              Color.fromARGB(255, 170, 95, 255),
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
                children: const [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "himanshu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "tz1...vCW",
                    style: TextStyle(
                        color: Colors.white54, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.copy,
                    color: Colors.white54,
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("https://cryptologos.cc/logos/flow-flow-logo.png",height: 40,),
              Text(
                a.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
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