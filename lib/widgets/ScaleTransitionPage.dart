import 'package:flutter/material.dart';

class ScaleTransitionPage extends PageRouteBuilder{

  Widget child;

  ScaleTransitionPage({required this.child}):super(
    pageBuilder: (context,animation,animation1)=>child,
    transitionDuration: Duration(seconds: 1),
    reverseTransitionDuration: Duration(seconds: 1)
  );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return  SlideTransition(
      position: Tween<Offset>(begin: Offset(1,0),end: Offset.zero).animate(animation),
      child: child,
    );
  }

}