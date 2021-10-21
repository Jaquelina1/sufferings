import 'package:prova1plotze/Tela0.dart';
import 'package:prova1plotze/Tela1.dart';
import 'package:prova1plotze/Tela10.dart';
import 'package:prova1plotze/Tela2.dart';
import 'package:prova1plotze/Tela3.dart';
import 'package:prova1plotze/Tela4.dart';
import 'package:prova1plotze/Tela5.dart';
import 'package:prova1plotze/Tela6.dart';
import 'package:prova1plotze/Tela7.dart';
import 'package:prova1plotze/Tela8.dart';
import 'package:prova1plotze/Tela9.dart';
import 'package:prova1plotze/Tela11.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',

      //
      // ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 't0',
      routes: {
        't0': (context) => Tela0(),
        't1': (context) => Tela1(),
        't2': (context) => Tela2(),
        't3': (context) => Tela3(),
        't4': (context) => Tela4(),
        't5': (context) => Tela5(),
        't6': (context) => Tela6(),
        't7': (context) => Tela7(),
        't8': (context) => Tela8(),
        't9': (context) => Tela9(),
        't10': (context) => Tela10(),
        't11': (context) => Tela11(),
      },
    ),
  );
}

//
// Classe para Troca de Dados entre as Telas
//
class Cadastro {
  final String email;
  final String senha;
  Cadastro(
    this.email,
    this.senha,
  );
}
