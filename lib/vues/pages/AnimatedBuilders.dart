import 'package:flutter/material.dart';

class AnimatedBuilders extends StatefulWidget{

  const AnimatedBuilders({super.key});

  @override
  AnimatedBuildersState createState()=> AnimatedBuildersState();
}

class AnimatedBuildersState extends State<AnimatedBuilders>with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double>animation;
  
  Duration duration = Duration(seconds: 2);

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: duration)..repeat(reverse: true);
    animation = Tween<double>(begin: 1,end: 3).animate(CurvedAnimation(parent: animationController, curve:Curves.elasticIn));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: animationController,
          child: FlutterLogo(size: 100),
          builder: (context,child){
            return Transform.scale(
              scale:  animation.value,
              child: child,
            )
              /*Transform.rotate(
              angle: animationController.value*2*180,
              child: child,
            )*/;
          }
      ),
    );
  }
}