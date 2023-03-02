import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/animated_size/AnimatedSize.dart';

class Taille extends StatelessWidget{

  const Taille({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("la taille"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            context.read<LeAnimatedSize>().changeSize();
          },
          child:AnimatedSize(
            duration: Duration(seconds: 2),
            child: Container(
              height: (context.watch<LeAnimatedSize>().size)?300:150,
              width: (context.watch<LeAnimatedSize>().size)?300:150,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }

}