import 'package:flutter/material.dart';
import 'screens/Inicio.dart';
import 'screens/EmAlta.dart';
import 'screens/Inscricao.dart';
import 'screens/Biblioteca.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  List<Widget> telas = [
    Inicio(),
    EmAlta(),
    Inscricao(),
    Biblioteca(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "imagens/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(icon: Icon(Icons.whatshot), label: "Em alta"),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: "Inscrições"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Biblioteca"),
        ],
      ),
    );
  }
}