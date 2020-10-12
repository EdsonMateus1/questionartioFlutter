import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() onSelecao;

  Resposta({this.text, this.onSelecao});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: onSelecao,
        child: Text(text),
      ),
    );
  }
}
