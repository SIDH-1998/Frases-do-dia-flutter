import 'package:flutter/material.dart';

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
            const Text(
                "Clique Abaixo para Gerar uma Frase!",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            const ElevatedButton(
                onPressed: null,
                child: Text(
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

