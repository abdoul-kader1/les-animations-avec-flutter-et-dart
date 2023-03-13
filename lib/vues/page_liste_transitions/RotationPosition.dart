import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class RotationPosition extends StatefulWidget{

  const RotationPosition({super.key});

  @override
  RotationPositionState createState()=>RotationPositionState();
}

class RotationPositionState extends State<RotationPosition>with SingleTickerProviderStateMixin{

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
        titre: "rotation transition",
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
              child: RotationTransition(
                turns: Tween<double>(begin: 0,end: 0.5).animate(curvedAnimation),
                child: FlutterLogo(size: 200),
              ),
            )
        )
    );
  }
}