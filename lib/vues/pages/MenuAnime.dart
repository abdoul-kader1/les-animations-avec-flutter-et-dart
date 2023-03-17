import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' show radians;
import 'dart:math' as math;

class MenuAnime extends StatefulWidget{

  MenuAnime({super.key});

  @override
  MenuAnimeState createState()=>MenuAnimeState();
}

class MenuAnimeState extends State<MenuAnime>with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double>animation;
  late Animation<double>move;
  late Animation<double>rotation;
  late CurvedAnimation curvedAnimation;
  Duration duration = Duration(seconds: 1);
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: duration);
    curvedAnimation = CurvedAnimation(parent: animationController,curve: Curves.linear);
    animation = Tween<double>(begin: 1,end: 0).animate(curvedAnimation);
    move = Tween<double>(begin: 1,end: 75).animate(curvedAnimation);
    rotation = Tween<double>(begin: 0,end: math.pi*2).animate(curvedAnimation);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context,child){
          return Transform.rotate(
            angle: rotation.value,
            child: stack(),
          );
        }
    );
  }

  Stack stack(){
    return Stack(
      alignment: Alignment.center,
      children: [
        menuChoisir(Icons.abc,Colors.green,"0",closeMenu,0),
        menuChoisir(Icons.abc,Colors.purpleAccent,"270",closeMenu,270),
        menuChoisir(Icons.abc,Colors.tealAccent,"90",closeMenu,90),
        menuChoisir(Icons.abc,Colors.yellowAccent,"180",closeMenu,180),
        Transform.scale(
          scale: animation.value-1,
          child: fab(Icons.close, Colors.red, "close",closeMenu),
        ),
        Transform.scale(
          scale: animation.value,
          child: fab(Icons.menu, Colors.blue, "Open",openMenu),
        ),
      ],
    );
  }
  FloatingActionButton fab(IconData icon,Color couleur,String tag,VoidCallback onPressed){
    return FloatingActionButton(
      onPressed:onPressed,
      heroTag: tag,
      backgroundColor: couleur,
      child:Icon(icon)
    );
  }
  menuChoisir(IconData icon,Color couleur,String tag,VoidCallback onPressed,double angle){
    double radian = radians(angle);
    double x = (move.value)*math.cos(radian);
    double y = (move.value)*math.sin(radian);
    return Transform(
      transform: Matrix4.identity()..translate(x,y),
      child: fab(icon,couleur,tag,onPressed),
    );
  }
  openMenu(){
    animationController.forward();
  }
  closeMenu(){
    animationController.reverse();
  }
}