import 'package:flutter/material.dart';
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
    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedBuilder(
            animation: animationController,
            builder: (context,child) {
              return stack();
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: CircleBorder()
                ),
                  onPressed: (){
                    tourner = true;
                    verification();
                  },
                  child: Icon(Icons.thumb_down,color: Colors.red)
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: CircleBorder()
                  ),
                  onPressed: (){
                    tourner = false;
                    verification();
                  },
                  child:  Icon(Icons.thumb_up,color: Colors.green)
              ),
            ],
          )

        ],
      ) ,
    );
  }

  Stack stack(){
    print(index);
    return Stack(
      children: (lesCards.isEmpty)?[
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(width: 300,height: 400,child: Center(child:Text("Ouppss il n'ya Plus de donnée"))),
        )
      ]:lesCards,
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
      print(lesCards);
    animationController.forward();
  }
  supprimerAnimation(){
      animation.addStatusListener((status) {
        if(status==AnimationStatus.completed){
          lesCards.removeAt(index);
          animationController.reset();
        }
      });
    print("les donnees $lesCards");
  }

}