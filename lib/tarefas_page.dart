import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TarefasPage extends StatefulWidget {
  const TarefasPage({super.key});

  @override
  State<TarefasPage> createState() => _TarefasPageState();
}

class _TarefasPageState extends State<TarefasPage> {
  late SharedPreferences prefs;
  List<String> tarefas = ["Pagar Contas", "Comprar roupa"];

  String novaTarefa = "";

  void addTarefa() {
    if (novaTarefa != "") {
      setState(() {
        tarefas.add(novaTarefa);
      });
      prefs.setStringList("tarefas", tarefas);
    }
  }

  void removeTarefa(String tarefa) {
    setState(() {
      tarefas.remove(tarefa);
    });
    prefs.setStringList("tarefas", tarefas);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carregarTarefas();
  }

  Future<void> carregarTarefas() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      tarefas = prefs.getStringList("tarefas") ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Tarefas Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ...tarefas.map(
              (tarefa) => GestureDetector(
                onTap: () {
                  removeTarefa(tarefa);
                },
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(tarefa),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 400,
              child: TextFormField(
                onChanged: (valor) {
                  novaTarefa = valor;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                addTarefa();
                print("clique");
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.cyan,
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
