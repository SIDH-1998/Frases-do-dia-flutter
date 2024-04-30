import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //1º text
          //2º imagem
          //3º text resultado
          //4º linha para 3 imagens
          const Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16 ),
            child: Text(
                "Escolha do App",
                    textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset("imagens/padrao.png"),
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16 ),
            child: Text(
              "Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("imagens/pedra.png", height: 100,),
              Image.asset("imagens/papel.png", height: 100,),
              Image.asset("imagens/tesoura.png", height: 100,),
            ],
          ),
        ],
      ),
    );
  }
}
