import 'package:flowpay/components/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class CardStack extends StatelessWidget {
  final List cards;
  const CardStack({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemWidth: 400,
      itemHeight: 225,
      loop: true,
      duration: 100,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: mainPage(
            id: cards[index]['id'],
            chain: cards[index]['name'],
            balance: cards[index]['balance'],
            image: cards[index]['image'],
          ),
        );
      },
      itemCount: cards.length,
      layout: SwiperLayout.STACK,
    );
  }
}
