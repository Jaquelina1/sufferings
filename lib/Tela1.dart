import 'package:firebase_auth/firebase_auth.dart';
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
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
          backgroundColor: Colors.blue),
      backgroundColor: Colors.blue[50],
      body: Container(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: [
            TextField(
              controller: email,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300,
              ),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: 'Email'),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              controller: senha,
              style: const TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.w300,
              ),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock), labelText: 'Senha'),
            ),
            const SizedBox(height: 40),
            Container(
              width: 150,
              child: OutlinedButton(
                child: const Text('entrar'),
                onPressed: () {
                  setState(() {
                    isLoading = true;
                  });
                  login(email.text, senha.text);
                },
              ),
            ),
            const SizedBox(height: 60),
            Container(
              width: 150,
              child: TextButton(
                child: const Text('Cadastre-se'),
                onPressed: () {
                  Navigator.pushNamed(context, 't5');
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void login(email, senha) {
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: senha).then((value) {

      Navigator.pushNamed(context, 't2');

    }).catchError((erro){

      var mensagem = '';
      if (erro.code == 'user-not-found'){
        mensagem = 'ERRO: Usuário não encontrado';
      }else if (erro.code == 'wrong-password'){
        mensagem = 'ERRO: Senha incorreta';
      }else if ( erro.code == 'invalid-email'){
        mensagem = 'ERRO: Email inválido';
      }else{
        mensagem = erro.message;
      }

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(mensagem),
            duration: const Duration(seconds:2)
          )
      );

    });

  }


}