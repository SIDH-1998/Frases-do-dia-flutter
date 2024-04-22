import 'package:flutter/material.dart';

/*
* Stateless -> Widgets que não podem ser Alterados (constantes)
* Stateful -> Widgets que podem ser Alterados (variaveis)
*/

void main(){

  runApp(

    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful(),
    ));
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {

    var _texto = "Sidiomar";

    return  Scaffold(
      appBar: AppBar(
        title: Text ("titulo"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: (){},
              child: Text("Clique Aqui!"),
            ),
            Text("Nome: $_texto"),
          ],
        ),
      ),
    );
  }
}

