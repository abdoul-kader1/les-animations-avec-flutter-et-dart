import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class PositionTransition extends StatefulWidget{

 const PositionTransition({super.key});

  @override
  PositionTransitionState createState()=>PositionTransitionState();
}

class PositionTransitionState extends State<PositionTransition>with SingleTickerProviderStateMixin{

  bool isAnim = false;
  int nombre = 1;
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  late RelativeRectTween hautGauche;
  late RelativeRectTween basGauche;
  late RelativeRectTween hautDroite;
  late RelativeRectTween basDroite;
  Duration duration = Duration(seconds: 2);

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: duration);
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.elasticIn);
    hautGauche = RelativeRectTween(begin:RelativeRect.fromLTRB(30,30,30,30),end: RelativeRect.fromLTRB(0,0,150,150));
    hautDroite = RelativeRectTween(begin:RelativeRect.fromLTRB(30,30,30,30),end: RelativeRect.fromLTRB(150,0,0,150));
    basGauche = RelativeRectTween(begin:RelativeRect.fromLTRB(30,30,30,30),end: RelativeRect.fromLTRB(0,150,150,0));
    basDroite = RelativeRectTween(begin:RelativeRect.fromLTRB(30,30,30,30),end: RelativeRect.fromLTRB(150,150,0,0));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    double largeur = size.width*0.6;
    double hauteur = size.height*0.3;
   return MaScaffold(
       titre: "Position transition",
       body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(
               child: Stack(
                 children: [
                   Container(
                     width: largeur,
                     height: hauteur,
                     color: Colors.redAccent,
                   ),
                   PositionedTransition(
                       rect: envoieAnimation(nombre),
                       child: FlutterLogo()
                   )
                 ],
               ),
             ),
             ElevatedButton(
                 onPressed:(){verifcation();setState(() {
                   nombre = 1;
                 });},
                 child:Text("Haut gauche")
             ),
             ElevatedButton(
                 onPressed:(){verifcation();setState(() {
                   nombre = 2;
                 });},
                 child:Text("Haut droite")),
             ElevatedButton(
                 onPressed:(){verifcation();setState(() {
                   nombre = 3;
                 });},
                 child:Text("bas gauche")),
             ElevatedButton(
                 onPressed:(){verifcation();setState(() {
                   nombre = 4;
                 });},
                 child:Text("bas droite"))
           ],
         ),
   );
  }
  verifcation(){
    if(isAnim){
      animationController.reverse();
    }else{
      animationController.forward();
    }
    isAnim = !isAnim;
  }
   envoieAnimation(int nombre){
    if(nombre == 1){
      return hautGauche.animate(curvedAnimation);
    }else if(nombre == 2){
      return hautDroite.animate(curvedAnimation);
    }else if(nombre == 3){
      return basGauche.animate(curvedAnimation);
    }else{
      return basDroite.animate(curvedAnimation);
    }
  }
}