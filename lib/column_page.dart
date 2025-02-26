import 'package:flutter/material.dart';

class column_page extends StatefulWidget {
  const column_page({super.key});

  @override
  State<column_page> createState() => _column_pageState();
}

class _column_pageState extends State<column_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Informações"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("ABC"),
          Container(width: 100, height: 50, color: Colors.blueAccent),
          Icon(Icons.access_alarm_sharp),
        ],
      ),
    );
  }
}
