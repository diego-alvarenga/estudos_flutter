import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "O maior prazer de um homem inteligente é bancar o idiota diante do idiota que quer bancar o inteligente.",
    "A vida é aquilo que acontece enquanto estamos ocupados fazendo planos.",
    "Um pássaro que você liberta pode nunca mais voltar, mas um pássaro que você cuida sempre estará com você.",
    "Todo o esforço é inútil se não soubermos para onde estamos indo.",
    "O rio atinge seus objetivos porque aprendeu a contornar os obstáculos.",
    "A simplicidade é o último grau de sofisticação.",
    "O futuro depende do que fazemos no presente.",
    "A jornada é tão importante quanto o destino."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: _gerarFrase,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
