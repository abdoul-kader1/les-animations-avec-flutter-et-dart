import 'package:flutter/material.dart';

class LeCrossFade extends StatelessWidget{

  const LeCrossFade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Le CrossFade"),
      ),
    );
  }

}