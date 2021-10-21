import 'package:flutter/material.dart';

class Tela9 extends StatefulWidget {
  const Tela9({Key? key}) : super(key: key);

  @override
  _Tela9State createState() => _Tela9State();
}

class _Tela9State extends State<Tela9> {
  
  var lista = [];

  var txtTarefa = TextEditingController();

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefas'),
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

                
                //selecionar item da lista
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
                        setState(() {
                          var msg = '';
                          if (txtTarefa.text.isNotEmpty) {
                            lista.add(txtTarefa.text);
                            txtTarefa.clear();
                            msg = 'Tarefa adicionada com sucesso.';
                          } else {
                            msg = 'A descrição da tarefa não pode ser vazia.';
                          }

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(msg),
                            duration: Duration(seconds: 2),
                          ));
                        });

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