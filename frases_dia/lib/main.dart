import 'package:flutter/material.dart';

void main(){

  runApp(

    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
               child: Text("Conteúdo Principal"),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    ));
}