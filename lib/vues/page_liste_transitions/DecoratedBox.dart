import 'package:flutter/material.dart';

class DecoratedBoxs extends StatefulWidget{

  const DecoratedBoxs({super.key});

  @override
  DecoratedBoxsState createState()=>DecoratedBoxsState();

}

class DecoratedBoxsState extends State<DecoratedBoxs>with SingleTickerProviderStateMixin{

  late Duration duration = Duration(seconds: 3);
  late Animation<Decoration>animation;
  late DecorationTween decorationTween;
  late CurvedAnimation curvedAnimation;
  late AnimationController animationController;
  bool isAnim = false;


  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: duration
    );
    initialisationAnimation();
  }

  //fonction pour initialiser l'animation
  initialisationAnimation(){
    //initialisation du tween
    decorationTween = DecorationTween(
      begin: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(190)),
      end: BoxDecoration(
        borderRadius: BorderRadius.circular(190),
          boxShadow: [
            BoxShadow(color: Colors.teal,offset: Offset(10,10)),
          ]
      ),
    );
    //initialisation de la curves
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.elasticInOut);
    //lancement de l'animation
    animation = decorationTween.animate(curvedAnimation);
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title:  Text("Decorated Box"),
      ),
      body: Center(
          child: DecoratedBoxTransition(
            decoration:animation,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20)
              ),
              onPressed: (){
                if(isAnim){
                  animationController.reverse();
                }else{
                  animationController.forward();
                }
                isAnim = !isAnim;
              },
              child: Text("DecoratedBoxTransition"),
            ),
          )
      ),
    );
  }
}