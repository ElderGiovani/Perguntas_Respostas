import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "questao.dart";

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    if (kDebugMode) {
      _perguntaSelecionada++;
      print('Pergunta respondida');
    }
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é o seu animal favorito ?',
    ];
    return MaterialApp(
      showSemanticsDebugger: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas')),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Questao(
                  perguntas[_perguntaSelecionada],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 243, 0, 41)),
                onPressed: _responder,
                child: const Text('Resposta 1'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 243, 0, 41)),
                onPressed: _responder,
                child: const Text('Resposta 2'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 243, 0, 41)),
                onPressed: _responder,
                child: const Text('Resposta 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
