import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final List<String> respondidas;

  Resultado({this.respondidas});

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
          ...res
        ],
      ),
    );
  }
}
