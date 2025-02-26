import 'package:flutter/material.dart';

class row_page extends StatefulWidget {
  const row_page({super.key});

  @override
  State<row_page> createState() => _row_pageState();
}

class _row_pageState extends State<row_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Calendario de atividades"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Text("ABC"),
          Container(width: 100, height: 50, color: Colors.blueAccent),
          Icon(Icons.access_alarm),
        ],
      ),
    );
  }
}
