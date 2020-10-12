import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final String pergunta;
  final List<String> respostas;
  final void Function(String) onResponder;

  Questionario(
      {@required this.onResponder,
      @required this.pergunta,
      @required this.respostas});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(
          text: pergunta,
        ),
        ...respostas
            .map((e) => Resposta(
                  text: e,
                  onSelecao: () => onResponder(e),
                ))
            .toList()
      ],
    );
  }
}
