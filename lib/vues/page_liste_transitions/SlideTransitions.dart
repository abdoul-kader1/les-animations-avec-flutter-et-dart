import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class SlideTransitions extends StatefulWidget{

  const SlideTransitions({super.key});

  @override
  SlideTransitionsState createState()=>SlideTransitionsState();
}

class SlideTransitionsState extends State<SlideTransitions>with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  bool isAnim = false;
  late CurvedAnimation curvedAnimation;
  Duration duration = Duration(seconds: 2);

  @override
  void initState() {
    animationController = AnimationController(vsync:this,duration: duration);
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.linear);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaScaffold(
        titre: "slide transition",
        body: Center(
            child: InkWell(
              onTap: (){
                if(isAnim){
                  animationController.reverse();
                }else{
                  animationController.forward();
                }
                isAnim = !isAnim;
              },
              child: SlideTransition(
                position:  Tween<Offset>(begin: Offset(0,0),end: Offset(0,-1)).animate(curvedAnimation),
                child: FlutterLogo(size: 200),
              ),
            )
        )
    );
  }
}