import 'package:flutter/material.dart';
import 'package:segundo_app/column_page.dart';
import 'package:segundo_app/form_field_page.dart';
import 'package:segundo_app/imagem_page.dart';
import 'package:segundo_app/row_page.dart';
import 'package:segundo_app/text_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void abreImagem() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => imagem_page()));
  }

  void textForm() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => text_page()));
  }

  void column() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => column_page()));
  }

  void row() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => row_page()));
  }

  void form_field_page() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => row_page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: abreImagem, child: Text("imagem")),
          SizedBox(height: 20),
          ElevatedButton(onPressed: textForm, child: Text("TextForm")),
          SizedBox(height: 20),
          ElevatedButton(onPressed: column, child: Text("Column")),
          SizedBox(height: 20),
          ElevatedButton(onPressed: row, child: Text("Row")),
          SizedBox(height: 20),
          ElevatedButton(onPressed: form_field_page, child: Text("Row")),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
