import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  const Tela3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apresentação do APP'),
        actions: [
            Center(
              child: Padding(padding: EdgeInsets.only(right: 10), 
                child: Text(""))          
            )
          ],
        centerTitle: true,
      
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("O aplicativo 'Minha Agenda Fácil' foi desenvolvido por dois estudantes do curso de Analise e Desenvolvimento de Sistemas da FATEC."),
          Text("O tema escolhido foi criar um aplicativo tipo uma agenda de tarefas, a fim de facilitar a organização e o planejamento de tarefas e/ou compromissos, com a facilidade de controlar tudo pelo celular, além de poder consultar sobre o clima para melhor distribuição de suas rotinas durante a semana."),
          Text("Desenvolvedores"),
          Image.asset('lib/imagens/fotoBruno.jpg'),
          Image.asset('lib/imagens/fotoJaque2.jpg'),
        ]


          )
    );
      
    
    
  }
}
