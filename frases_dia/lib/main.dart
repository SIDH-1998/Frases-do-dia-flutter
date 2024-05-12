import 'package:flutter/material.dart';
import 'dart:math';

/*
* Stateless -> Widgets que não podem ser Alterados (constantes)
* Stateful -> Widgets que podem ser Alterados (variaveis)
*/

void main(){
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _frases = [
    "Você é especial",
    "tu és chata",
    "3",
    "4",
    "5",
    "6",
    "7",
  ];

  var _fraseGerada = "Clique Abaixo Para Gerar uma Frase!";

  void _gerarFrases(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerar Frases"),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.grey)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagem/logo.png"),
            Text(
                _fraseGerada,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
                onPressed: _gerarFrases,
                child: const Text(
                    "Nova Frase",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

