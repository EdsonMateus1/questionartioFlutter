import 'package:flutter/material.dart';
import 'package:hello_world/resultado.dart';
import 'questao.dart';
import 'resposta.dart';
import 'resultado.dart';

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppStante createState() => _PerguntaAppStante();
}

class _PerguntaAppStante extends State<PerguntaApp> {
  var _perguntas = const [
    {
      "pergunta": "Qual e sua cor favorita",
      "respostas": [
        "vermelho",
        "preto",
        "azul",
        "verde",
      ]
    },
    {
      "pergunta": "Qual e seu animal favorito",
      "respostas": [
        "cachoro",
        "gato",
        "coelho",
        "cobra",
      ]
    },
    {
      "pergunta": "Qual seu carro favorito",
      "respostas": [
        "ferrari",
        "uno",
        "lamborgine",
        "gol",
      ]
    },
  ];

  var _perguntaSelect = 0;
  List<String> _respondidas = [];

  bool get perguntaSelecionada {
    return _perguntaSelect < _perguntas.length;
  }

  void _responder(String e) {
    if (perguntaSelecionada) {
      setState(() {
        _perguntaSelect++;
        _respondidas.add(e);
      });
    }
  }

  void _resetar() {
    setState(() {
      _perguntaSelect = 0;
      _respondidas = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        perguntaSelecionada ? _perguntas[_perguntaSelect]["respostas"] : null;

    return perguntaSelecionada
        ? Column(
            children: [
              Questao(
                text: _perguntas[_perguntaSelect]["pergunta"],
              ),
              ...respostas
                  .map((e) => Resposta(
                        text: e,
                        onSelecao: () => _responder(e),
                      ))
                  .toList()
            ],
          )
        : Column(
            children: [
              Resultado(
                respondidas: _respondidas,
              ),
              RaisedButton(
                child: Text("resetar"),
                onPressed: _resetar,
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          );
  }
}
