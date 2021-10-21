import 'package:flutter/material.dart';

class Tela7 extends StatelessWidget {
  const Tela7({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              title: Text("Previsão do Tempo"),
              actions: [
                Center(
                    child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text("Usuário1")))
              ],
              centerTitle: true,
            ),
      body: ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text("10/Out - Sol"),
          subtitle: Text("Hoje o dia será ensolarado."),
          trailing: Icon(Icons.new_releases),
          onTap: () {
            debugPrint("Sol");
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_cloudy),
          title: Text("11/Out - Nublado"),
          subtitle: Text("Previsão de tempo nublado"),
          onTap: () {
            debugPrint("Nublado");
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_cloudy_outlined),
          title: Text("12/Out - Sol com nuvem"),
          subtitle: Text("Previsão de Sol com algumas nuvens"),
          onTap: () {
            debugPrint("Sol com nuvem");
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_cloudy_rounded),
          title: Text("13/Out - Nublado"),
          subtitle: Text("Previsão de tempo nublado"),
          onTap: () {
            debugPrint("Nublado");
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text("14/Out - Sol"),
          subtitle: Text("Previsão de tempo ensolarado."),
          onTap: () {
            debugPrint("Sol");
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text("15/Out - Sol"),
          subtitle: Text("Previsão de tempo ensolarado."),
          onTap: () {
            debugPrint("Sol");
          },
        ),
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text("16/Out - Sol"),
          subtitle: Text("Previsão de tempo ensolarado."),
          onTap: () {
            debugPrint("Sol");
          },
        ),
        
        Container(
          width: 100,
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