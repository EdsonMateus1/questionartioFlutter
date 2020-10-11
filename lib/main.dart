import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './perguntaApp.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
