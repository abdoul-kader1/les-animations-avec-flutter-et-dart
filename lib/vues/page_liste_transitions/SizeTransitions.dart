import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class SizeTransitions extends StatefulWidget{

  const SizeTransitions({super.key});

  @override
  SizeTransitionsState createState()=> SizeTransitionsState();
}

class SizeTransitionsState extends State<SizeTransitions>with SingleTickerProviderStateMixin{

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
        titre: "size transition",
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
              child: SizeTransition(
                sizeFactor: Tween<double>(begin: 1,end: 0.2).animate(curvedAnimation),
                child: FlutterLogo(size: 200),
              ),
            )
        )
    );
  }
}