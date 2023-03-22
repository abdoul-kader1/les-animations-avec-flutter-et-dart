import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../modeles/data.dart';

class AnimationTinder extends StatefulWidget{

  const AnimationTinder({super.key});

  @override
  AnimationTinderState createState()=>AnimationTinderState();
}

class AnimationTinderState extends State<AnimationTinder>with SingleTickerProviderStateMixin{

  List<Widget>lesCards = Data().donneeTinder();
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  late Animation<Offset>animation;
  late Animation<Offset>animationInverse;
  late Animation<double>rotation;
  late Animation<double>rotationInverse;
  late int index ;
  bool tourner = false;
  Duration duration = Duration(seconds: 2);

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: duration);
    index = lesCards.length;
    curvedAnimation = CurvedAnimation(parent: animationController, curve:Curves.linear);
    animation = Tween<Offset>(begin: Offset(0,0),end: Offset(-2,0)).animate(curvedAnimation);
    animationInverse = Tween<Offset>(begin: Offset(0,0),end: Offset(2,0)).animate(curvedAnimation);
    rotation = Tween<double>(begin:0,end:-0.2).animate(curvedAnimation);
    rotationInverse = Tween<double>(begin:0,end:0.2).animate(curvedAnimation);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child:Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.15),
              child: AnimatedBuilder(
                animation: animationController,
                builder: (context,child) {
                  return stack();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  boutton(true,Colors.red,Icons.thumb_down),
                  boutton(false,Colors.green,Icons.thumb_up)
                ],
              ),
            ),
          ],
        ) ,
      ),
    );
  }

  Stack stack(){
    return Stack(
      children: (lesCards.isEmpty)?[
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(width: 300, height: 400, child: Center(child:RiveAnimation.asset("lib/rive/3257-6868-404.riv"))),
              Text("Il n'y a plus de données",style: TextStyle(fontSize: 20),)
            ],
          ),
        )
      ]:lesCards,
    );
  }
  ElevatedButton boutton(bool tourne,Color couleur,IconData icons){
    return ElevatedButton(
        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),shape: CircleBorder()),
        onPressed: (){
          tourner = tourne;
          verification();
        },
        child:  Icon(icons,color: couleur)
    );
  }
  verification(){
    if(index>0){
      setState(() {
        index--;
      });
      creatAnimation();
      supprimerAnimation();
    }
  }
  creatAnimation(){
    Widget element = lesCards.last;
      lesCards[index] = SlideTransition(
        position:(tourner)?animation:animationInverse,
        child: RotationTransition(
          turns: (tourner)?rotation:rotationInverse,
          child: element,
        ),
      );
    animationController.forward();
  }
  supprimerAnimation(){
      animation.addListener(() {
        if(animation.isCompleted){
          setState(() {
            lesCards.removeAt(index);
          });
          animationController.reset();
        }
      });
  }
}