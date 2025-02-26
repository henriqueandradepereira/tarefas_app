import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class TinderPage extends StatefulWidget {
  const TinderPage({super.key});

  @override
  State<TinderPage> createState() => _TinderPageState();
}

class _TinderPageState extends State<TinderPage> {
  List<Container> cards = [
    Container(alignment: Alignment.center, child: Image.asset("assets/01.png")),
    Container(alignment: Alignment.center, child: Image.asset("assets/02.png")),
    Container(alignment: Alignment.center, child: Image.asset("assets/03.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Tinder Page"),
        centerTitle: true,
      ),

      body: Flexible(
        child: CardSwiper(
          cardsCount: cards.length,
          cardBuilder:
              (context, index, percentThresholdX, percentThresholdY) =>
                  cards[index],
        ),
      ),
    );
  }
}
