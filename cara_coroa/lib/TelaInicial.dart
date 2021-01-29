import 'package:caracoroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'Resultado.dart';
import 'dart:math';

class Game extends StatefulWidget {



  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {

  void _exibirResultado(){
    var intens = ["cara", "coroa"];
    var numero = Random().nextInt(intens.length);
    var resultado = intens[numero];

    Navigator.push(
        context, 
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        ));
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),

      ),
    );
  }
}
