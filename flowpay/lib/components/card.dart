import 'package:flutter/material.dart';
import 'package:blockies/blockies.dart';
class card extends StatelessWidget {
  final String heading;
  final String subheading;
  final Color color;
  final Function() onPressed;

  const card({
    Key? key,
    required this.heading,
    required this.subheading,
    required this.color,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          height:MediaQuery.of(context).size.height * 0.21,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Blockies(
                seed: '0xe95C0ed548f63B181f6528B8e3c57a7c93C2E3Dc', // seed used to generate identicon
                color: Color(0xFFD95030),     // to manually specify the icon color, default: random
                bgColor: Color(0x000000),     // choose a different background color, default: random based on the seed
                spotColor: Color(0xFFE6D690), // choose a different spot color, default: random based on the seed
                size: 8,                      // width and height of the icon in blocks, default: 10
              ),
              Spacer(),
              Text(
                this.heading,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                this.subheading,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        onTap: this.onPressed,
      ),
    );
  }
}
