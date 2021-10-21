import 'package:prova1plotze/main.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  _Tela1State createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {

  var email = TextEditingController();
  var senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,

        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [

                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    TextField(
                      controller: senha,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),


                    TextButton(
                      onPressed: () {

                        setState(() {

                                                  
                          var obj = Cadastro(
                            email.text,
                            senha.text,
                          );

                          Navigator.pushNamed(
                            context, 
                            't2',
                            arguments: obj
                          );

                        });

                      },

                      child: Text('Entrar'),
                    )
                  ],
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, 't5');
              },
              child: Text('Cadastre-se'),
            ),

            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, 't0');
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}