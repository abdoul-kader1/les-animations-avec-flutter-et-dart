import 'dart:async';

import 'package:flutter/material.dart';

class PreloadAnimation extends StatefulWidget{

  Widget enfant;
  int millisecondes;

   PreloadAnimation({required this.enfant,required this.millisecondes, super.key});

  @override
  PreloadAnimationState createState()=>PreloadAnimationState();

}

class PreloadAnimationState extends State<PreloadAnimation> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  late Animation<Offset>animation;
  Duration duration = Duration(seconds: 1);

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: duration);
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.decelerate);
    animation = Tween<Offset>(begin: Offset(-0.33,0),end: Offset.zero).animate(curvedAnimation);

    Timer(Duration(milliseconds: widget.millisecondes), () {
      animationController.forward();
    });
    super.initState();
  }

  @override
  void dispose() {
   animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: SlideTransition(
        position: animation,
        child: widget.enfant,
      ),
    );
  }
}