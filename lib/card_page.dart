import 'package:flutter/material.dart';
import 'package:segundo_app/text_page.dart';

class card_page extends StatefulWidget {
  const card_page({super.key});

  @override
  State<card_page> createState() => _card_pageState();
}

class _card_pageState extends State<card_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Card Page"),
        centerTitle: true,
      ),
      body: Card(
        elevation: 5,
        child: Container(
          width: 100,
          height: 50,
          color: Colors.blueGrey,
          child: Center(child: Text("Card 01")),
        ),
      ),
    );
  }
}
