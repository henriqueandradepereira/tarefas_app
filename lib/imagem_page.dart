import 'package:flutter/material.dart';

class imagem_page extends StatefulWidget {
  const imagem_page({super.key});

  @override
  State<imagem_page> createState() => _imagem_pageState();
}

class _imagem_pageState extends State<imagem_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Galeria"),
        centerTitle: true,
      ),
      body: Image.asset("assets/imagem01.jpg"),
    );
  }
}
