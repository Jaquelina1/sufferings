import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Tela10 extends StatefulWidget {
  const Tela10({Key? key}) : super(key: key);

  @override
  _Tela10State createState() => _Tela10State();
}

class _Tela10State extends State<Tela10> {
  var formKey = GlobalKey<FormState>();
  bool isChecked = false;

  var mensagem = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fale Conosco'),
        actions: [
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10), 
                child: Text(""))
            )
        ],
        centerTitle: true, 
      ),

      body: Container(
        padding: EdgeInsets.all(50),
        child: Form(
          key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [

                        TextField(
                          controller: mensagem,
                          decoration: InputDecoration(
                            labelText: 'Deixe-nos sua mensagem!',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 300,
                        ),

                        ElevatedButton (
                          child: Text('Enviar'),
                          onPressed: () {
                            
                            FirebaseFirestore.instance.collection('Mensagem').add({
                            'Mensagem'  : mensagem.text
                            });

                          Navigator.pushNamed(context, 't11');
                          }
                        ),
                      ]
                    )
                  )
                )
              ]            
            )
        ),
      )
    );
  }
}