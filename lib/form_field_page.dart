import 'package:flutter/material.dart';

class form_field_page extends StatefulWidget {
  const form_field_page({super.key});

  @override
  State<form_field_page> createState() => _form_field_pageState();
}

class _form_field_pageState extends State<form_field_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Form Field Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
          decoration: InputDecoration(
            label: Text("Nome"),
            enabledBorder: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
