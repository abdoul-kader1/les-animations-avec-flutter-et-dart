import 'dart:math';

import 'package:flutter/material.dart';

class AnimationListeners extends StatefulWidget{

  const AnimationListeners({super.key});

  @override
  AnimationListenersState createState() => AnimationListenersState();
}

class AnimationListenersState extends State<AnimationListeners>with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset>animation1;
  late Animation<Offset>animation2;
  late CurvedAnimation curvedAnimation;
  Duration duration = Duration(seconds: 2);
  bool verification = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: duration)..forward();
    curvedAnimation = CurvedAnimation(parent: animationController, curve:Curves.linear);
    animation1 = Tween<Offset>(begin: Offset(-3,0),end: Offset(0,0)).animate(curvedAnimation)
    ..addStatusListener((status) {
      if(status == AnimationStatus.forward){
        setState(() {
          verification = false;
        });
      }else if(status == AnimationStatus.completed){
        setState(() {
          verification = true;
        });
      }
    });
    animation2 = Tween<Offset>(begin: Offset(3,0),end: Offset(0,0)).animate(curvedAnimation);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children:nombreDeRow(4)),
    );
  }

  //fonction pour choisir le nombre de row
  List<Widget>nombreDeRow(int nombre){
    double taille = MediaQuery.of(context).size.width*0.4;
    List<Widget>listesDesRows = [];
    Row row ;
    for(int x = 0;x<nombre;x++){
      row = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [animationG(1,container(taille)),animationG(2,container(taille))],
      );
      listesDesRows.add(row);
    }
    return listesDesRows;
  }
  //fonction qui retourne un container
  Padding container(double taille){
    return Padding(
      padding: EdgeInsets.all(10),
      child: AnimatedOpacity(
        opacity: (verification)?1:0.4,
        duration: duration,
        child: Container(
            width: taille,
            height: taille,
            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
        ),
      ),
    );
  }
  //fonction pour l'annimation gauche
  animationG(int destination,Widget widget){
    if(destination == 1){
      return SlideTransition(
        position: animation1,
        child: widget,
      );
    }else if(destination == 2){
      return SlideTransition(
        position: animation2,
        child: widget,
      );
    }
  }
}