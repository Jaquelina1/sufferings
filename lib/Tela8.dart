import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Tela8 extends StatefulWidget {
  const Tela8({Key? key}) : super(key: key);

  @override
  _Tela8State createState() => _Tela8State();
}

class _Tela8State extends State<Tela8> {
  
  var lista = [];

  var txtTarefa = TextEditingController();

  Widget listaTarefa(item) {
    String nomeTarefa = item.data()['nomeTarefa'];

    return Card(
              elevation: 10,
              shadowColor: Colors.blue.shade200,
              child: ListTile(

                title: Text(
                  nomeTarefa,
                  style: TextStyle(fontSize: 22),
                ),

                trailing: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {

                    FirebaseFirestore.instance.collection('Tarefa').doc(item.id).delete();

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Tarefa removida com sucesso'),
                        duration: Duration(seconds: 2),
                    ));
                  },
                ),

                
                hoverColor: Colors.blue.shade100,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Tarefa selecionada: '),
                    duration: Duration(seconds: 2),
                  ));
                },
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
        actions: [
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10), 
                child: Text(""))
            )
        ],
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        
      ),

      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.grey.shade200,

        child: 
        
        StreamBuilder<QuerySnapshot>(

        //fonte de dados (coleção)
        stream: FirebaseFirestore.instance.collection('Tarefa').snapshots(),

        //exibir os dados retornados
        builder: (context, snapshot){

          switch(snapshot.connectionState){

            case ConnectionState.none:
              return const Center(child:Text('Não foi possível conectar ao Firebase'));

            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());

            //dados recebidos
            default: 
              final dados = snapshot.requireData;
              return ListView.builder(
                itemCount: dados.size,
                itemBuilder: (context,index){
                  return listaTarefa(dados.docs[index]);
                }
              );

          }
        }

      ),
      ),

    );
  }
}
