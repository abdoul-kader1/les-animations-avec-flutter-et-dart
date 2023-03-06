import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/autres_animations/LeAnimatedDefaultTextStyle.dart';

class TexteStyle extends StatelessWidget{

  const TexteStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("le TexteStyle"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            context.read<LeAnimatedDefaultTextStyle>().changeTextStyle();
          },
          child: AnimatedDefaultTextStyle(
            style: (context.watch<LeAnimatedDefaultTextStyle>().valeur?premierChoix():deuxiemeChoix()),
            duration: Duration(seconds: 2),
            child: (Text("Tape to change",textAlign: TextAlign.center)),
          ),
        ),
      ),
    );
  }
  //premier style du text
  TextStyle premierChoix(){
    return TextStyle(
      color: Colors.teal,
      fontWeight: FontWeight.bold,
      fontSize: 40
    );
  }
  //Deuxieme style du text
  TextStyle deuxiemeChoix(){
    return TextStyle(
        color: Colors.indigo,
        fontWeight: FontWeight.bold,
        fontSize: 20
    );
  }

}