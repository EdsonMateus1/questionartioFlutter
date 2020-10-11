import 'package:flutter/material.dart';
import 'questao.dart';
import 'respota.dart';

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppStante createState() => _PerguntaAppStante();
}

class _PerguntaAppStante extends State<PerguntaApp> {
  var _perguntas = const [
    {
      "pergunta": "qual e sua cor favorita",
      "respostas": [
        "vermelho",
        "preto",
        "azul",
        "verde",
      ]
    },
    {
      "pergunta": "qual e seu animal favorito",
      "respostas": [
        "cachoro",
        "gato",
        "coelho",
        "cobra",
      ]
    },
    {
      "pergunta": "qual seu carro favorito",
      "respostas": [
        "ferrari",
        "uno",
        "lamborgine",
        "gol",
      ]
    },
  ];

  var _perguntaSelect = 0;
  List<String> respondidas = [];

  void _responder(String e) {
    if (_perguntas.length - 1 <= _perguntaSelect) {
      print("nao tem mais perguntas");

      respondidas.add(e);
      setState(() {
        _perguntaSelect = 0;
      });
      print(respondidas);
    } else {
      setState(() {
        _perguntaSelect++;
      });
      respondidas.add(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = _perguntas[_perguntaSelect]["respostas"];

    List<Widget> widgetRepostas = respostas
        .map((e) => Resposta(
              text: e,
              onSelecao: () => _responder(e),
            ))
        .toList();

    return Column(
      children: [
        Questao(
          text: _perguntas[_perguntaSelect]["pergunta"],
        ),
        ...widgetRepostas
      ],
    );
  }
}
