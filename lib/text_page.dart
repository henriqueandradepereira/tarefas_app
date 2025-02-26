import 'package:flutter/material.dart';

class text_page extends StatefulWidget {
  const text_page({super.key});

  @override
  State<text_page> createState() => _text_pageState();
}

class _text_pageState extends State<text_page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Seja Bem Vindo ao CCMS!"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Meu segundo app",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
