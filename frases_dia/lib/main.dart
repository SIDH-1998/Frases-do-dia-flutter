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
      body: Container(),
    );
  }
}

