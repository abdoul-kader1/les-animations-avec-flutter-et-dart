import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class ScaleTransitione extends StatefulWidget{

  const ScaleTransitione({super.key});

  @override
  ScaleTransitionState createState()=>ScaleTransitionState();
}

class ScaleTransitionState extends State<ScaleTransitione>with SingleTickerProviderStateMixin{

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
              child: ScaleTransition(
                scale: Tween<double>(begin: 1,end: 0.5).animate(curvedAnimation),
                child: FlutterLogo(size: 200),
              ),
            )
        )
    );
  }
}
