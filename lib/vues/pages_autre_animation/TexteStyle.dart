import 'package:flutter/material.dart';

class TexteStyle extends StatelessWidget{

  const TexteStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("le TexteStyle"),
      ),
    );
  }

}