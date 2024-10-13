import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _precoBitcoin = "0";

  void _recuperarPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = jsonDecode(response.body);
    setState(() {
      _precoBitcoin = retorno["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/bitcoin.png"),
              Padding(
                padding: EdgeInsets.only(
                  top: 30, 
                  bottom: 30,
                ),
                child: Text(
                  "R\$ " + _precoBitcoin,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _recuperarPreco,
                child: Text(
                  "Atualizar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}