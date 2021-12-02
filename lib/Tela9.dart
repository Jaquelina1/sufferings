import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Tela9 extends StatefulWidget {
  const Tela9({Key? key}) : super(key: key);

  @override
  _Tela9State createState() => _Tela9State();
}

class _Tela9State extends State<Tela9> {
  
  var txtTarefa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefas'),
        actions: [
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10), 
                child: Text(""))
            )
        ],
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        
      ),

      

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        child: Icon(Icons.add),
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    'Adicionar tarefa',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  content: TextField(
                    controller: txtTarefa,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: Text('ok'),
                      onPressed: () {
                        FirebaseFirestore.instance.collection('Tarefa').add({
                            'nomeTarefa'  : txtTarefa.text
                        });

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Tarefa adicionada com sucesso!'),
                            duration: Duration(seconds: 2),
                        ));

                        

                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: Text('cancelar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              });
        },
      ),

    );
  }
}