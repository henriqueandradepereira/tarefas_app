import 'package:flutter/material.dart';
import 'package:segundo_app/text_page.dart';

class container_page extends StatefulWidget {
  const container_page({super.key});

  @override
  State<container_page> createState() => _container_pageState();
}

class _container_pageState extends State<container_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Sobre o CCMS"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        width: 50,
        height: 100,
        child: Icon(Icons.abc_outlined),
      ),
    );
  }
}
