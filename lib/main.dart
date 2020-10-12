import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './perguntaApp.dart';

// st
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: PerguntaApp()),
      ),
    );
  }
}
