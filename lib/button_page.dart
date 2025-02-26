import 'package:flutter/material.dart';

class button_page extends StatefulWidget {
  const button_page({super.key});

  @override
  State<button_page> createState() => _button_pageState();
}

class _button_pageState extends State<button_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
        onPressed: () {},
        child: Text("Clique Aqui", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
