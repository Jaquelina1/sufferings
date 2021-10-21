import 'package:flutter/material.dart';

class Tela8 extends StatefulWidget {
  const Tela8({Key? key}) : super(key: key);

  @override
  _Tela8State createState() => _Tela8State();
}

class _Tela8State extends State<Tela8> {
  
  var lista = [];

  var txtTarefa = TextEditingController();

  @override
  void initState() {
    lista.add("Tarefa 1");
    lista.add("Tarefa 2");
    lista.add("Tarefa 3");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remover Tarefas'),
        actions: [
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10), 
                child: Text("Usuário1"))
            )
        ],
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        
      ),

      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.grey.shade200,

        child: 
        ListView.builder(
          scrollDirection: Axis.vertical,

          itemCount: lista.length,

          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shadowColor: Colors.blue.shade200,
              child: ListTile(

                title: Text(
                  lista[index],
                  style: TextStyle(fontSize: 22),
                ),

                subtitle: Text(
                    'Tarefa x - Fazer x'),

                trailing: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      lista.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Tarefa removida com sucesso'),
                        duration: Duration(seconds: 2),
                      ));
                    });
                  },
                ),

                hoverColor: Colors.blue.shade100,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Tarefa selecionada: ${lista[index]}'),
                    duration: Duration(seconds: 2),
                  ));
                },
              ),
            );
          },
        ),
      ),

    );
  }
  
  
}