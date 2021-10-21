import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor : Colors.blue
      ),
      home :  Scaffold(
        appBar: AppBar(
          title: Text("Menu do App"),
          actions: [
            Center(
              child: Padding(padding: EdgeInsets.only(right: 20), 
                child: Text("Usuário1"))
            
            )
          ]
        ),
        body : Container (
          color: Colors.blueGrey,
        ),
       drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.plus_one),
                title: Text("Adicionar"),
                subtitle: Text("inclui compromisso, reunião, lembrete"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, 't9');
                }
               ),
               ListTile(
                leading: Icon(Icons.remove_circle),
                title: Text("Remover"),
                subtitle: Text("exclui compromisso, reunião, lembrete"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, 't8');
                }
               ),
               ListTile(
                leading: Icon(Icons.view_agenda),
                title: Text("Visualizar"),
                subtitle: Text("visualiza a agenda"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, 't6');
                }
               ),
               ListTile(
                leading: Icon(Icons.wb_sunny_outlined),
                title: Text("Previsão do Tempo"),
                subtitle: Text("visualiza a previsão meteorologica para melhor planejar suas tarefas"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, 't7');
                }
               ),
               ListTile(
                leading: Icon(Icons.info),
                title: Text("Sobre o APP"),
                subtitle: Text("informações sobre o aplicativo"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, 't3');
                }
               ),
               ListTile(
                leading: Icon(Icons.mail),
                title: Text("Fale conosco"),
                subtitle: Text("contacte os programadores para sugestões e críticas"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, 't10');
                }
               ),
               ListTile(
                leading: Icon(Icons.keyboard_return),
                title: Text("Sair"),
                subtitle: Text("retorne a tela de login"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, 't1');
                }
               )
            ],
           )
        )
      )
    );
  }
}