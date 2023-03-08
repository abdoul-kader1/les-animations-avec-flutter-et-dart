import 'package:flutter/material.dart';

class MaScaffold extends Scaffold{

  String titre;
  Widget body;

  MaScaffold({required this.titre,required this.body}):super(
    appBar: AppBar(
      backgroundColor: Colors.redAccent,
      title: Text(titre),
    ),
    body: body
  );
}