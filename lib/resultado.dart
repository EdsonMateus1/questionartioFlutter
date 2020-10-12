import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final List<String> respondidas;
  final void Function() onResete;

  Resultado({this.respondidas, this.onResete});

  @override
  Widget build(BuildContext context) {
    var res = respondidas.map((e) => Text(
          e,
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ));

    return Center(
      child: Column(
        children: [
          Text(
            "Parabens suas respostas",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          ...res,
          RaisedButton(
            child: Text(
              "resetar",
              style: TextStyle(fontSize: 30),
            ),
            onPressed: onResete,
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

