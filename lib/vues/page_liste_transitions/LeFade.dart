import 'package:flutter/material.dart';
import '../../widgets/MaScaffold.dart';

class LeFade extends StatefulWidget{

  const LeFade({super.key});

  @override
  LeFadeState createState()=>LeFadeState();
}

class LeFadeState extends State<LeFade>with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  Duration duration = Duration(seconds: 1);
  bool isAnim = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: duration
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaScaffold(
      titre: "Le fade transition",
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
            child: FadeTransition(
              opacity: Tween<double>(begin: 1,end: 0.33).animate(CurvedAnimation(parent:animationController, curve: Curves.linear)),
              child: FlutterLogo(size: 150),
            ),
          )
      ),
    );
  }
}