import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      title: "Frases do Dia",
      home: Container(
        color: Colors.greenAccent,
        child: Column(
          children: [
            Text(
                "Olá, Bebê.",
              style: TextStyle(
              fontSize: 40,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                letterSpacing: 0,
                wordSpacing: 0,
                decoration: TextDecoration.underline,
                decorationColor: Colors.cyan,
                decorationStyle: TextDecorationStyle.solid,
                color:  Colors.black
            ),
            )
          ],
        ),
      ),
    ));
}