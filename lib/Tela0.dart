import 'package:flutter/material.dart';

class Tela0 extends StatefulWidget {
  const Tela0({Key? key}) : super(key: key);

  @override
  _Tela0State createState() => _Tela0State();
}

class _Tela0State extends State<Tela0> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP M.A.F - Minha Agenda Fácil'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(child: Column
        
        (mainAxisAlignment: MainAxisAlignment.center,children: [
          
          Icon(Icons.calendar_view_month,
            size: 100,
            color: Colors.blue.shade800,
            ), 
          
          Icon(Icons.electric_bike,
            size: 100,
            color: Colors.blue.shade800,
            ), 

          ElevatedButton (
            child: Text('Começar'),
              onPressed: () {
                Navigator.pushNamed(context, 't1');
                            
              },
          ),
          
        ],),)
      )
    );

          
  }
}