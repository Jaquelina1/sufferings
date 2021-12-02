import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prova1plotze/Tela4.dart';

class Tela5 extends StatefulWidget {
  const Tela5({Key? key}) : super(key: key);

  @override
  _Tela5State createState() => _Tela5State();
}

class _Tela5State extends State<Tela5> {
  
  var formKey = GlobalKey<FormState>();
  bool isChecked = false;

  var nomecompleto = TextEditingController();
  var profissao = TextEditingController();
  var emailcadastro = TextEditingController();
  var senhacadastro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faça seu Cadastro'),
        
        centerTitle: true,
        automaticallyImplyLeading: false,
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
                          controller: nomecompleto,
                          decoration: InputDecoration(
                            labelText: 'Nome Completo',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextField(
                          controller: profissao,
                          decoration: InputDecoration(
                            labelText: 'Profissão',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextField(
                          controller: emailcadastro,
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextField(
                          controller: senhacadastro,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                    

                        Row(children: [Tela4(),
                          Text("Concordo com as políticas do aplicativo")],),

                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  width: 150,                               

                                  child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Voltar'),
                                  ),
                                ),
                               
                                Container(
                                  width: 150,
                                  child: OutlinedButton(
                                    child: const Text('Criar'),
                                    onPressed: () {
                                      criarConta(nomecompleto.text, profissao.text, emailcadastro.text, senhacadastro.text);
                                    },
                                  ),
                                )
                              ]
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ),
        ),
      ),
    );
  }

  void criarConta(nomecompleto, profissao, emailcadastro, senhacadastro){

    
    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailcadastro, 
      password: senhacadastro,
      )
      .then((value) {

        FirebaseFirestore.instance.collection('Usuários').add({
          'nomeCompleto'  : nomecompleto,
          'Profissão' : profissao,
          'E-mail'  : emailcadastro,
          'SenhaUsuário'  : senhacadastro
        });


        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Usuário criado com sucesso!'),
            duration: Duration(seconds: 2),
            
          )
        );
        Navigator.pop(context);
      
      }).catchError((erro){
        if (erro.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('ERRO: O email informado já está em uso.'),
            duration: Duration(seconds: 2),
          ),
        );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('ERRO: ${erro.message}'),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      
      });
    
  }

}