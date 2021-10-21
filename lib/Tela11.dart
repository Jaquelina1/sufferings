import 'package:flutter/material.dart';

class Tela11 extends StatelessWidget {
  const Tela11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fale Conosco'),
        actions: [
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10), 
                child: Text("Usuário1"))          
            )
          ],
        centerTitle: true,
        automaticallyImplyLeading: false,
      
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.sentiment_very_satisfied),
            title: Text("Mensagem Enviada!"),
            subtitle: Text("Sua opinião é muito importante para nós."),
            onTap: () {
              debugPrint("Mensagem enviada");
            },
          ),
          
          Container(
            width: 50,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, 't2');
              },
              child: Text('Menu Principal'),
            ),
          )
        ],
      ),
    );
     
  }
}