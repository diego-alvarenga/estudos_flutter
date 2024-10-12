import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';

void main() {

  FirebaseFirestore.instance
  .collection("usuarios")
  .doc("001")
  .set({"nome": "Diego"});
  
  runApp(MaterialApp(
    home: const Home(),
    debugShowCheckedModeBanner: false,
  ));
}

