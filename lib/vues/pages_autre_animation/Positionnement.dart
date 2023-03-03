import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/animated_positioned/AnimatedPositionned.dart';

class Positionnement extends StatelessWidget{

  const Positionnement({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double max = size.width*0.8;
    double centerTop = max/2 -20;
    double centerBottom = max/2 -20;
    final verification = context.watch<AnimatedPositioneds>().isConnected;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Le positionnement"),
      ),
      body: Center(
        child:Container(
          width: max,
          height: max,
          //color: Colors.teal,
          child: Card(
            elevation: 8,
            child: InkWell(
              onTap: (){
                context.read<AnimatedPositioneds>().changeEtatConnexion();
              },
              child:Stack(
                children: [
                  AnimatedPositioned(
                    duration: Duration(seconds: 2),
                    child: TextField(decoration: InputDecoration(hintText: "entrer votre mail")),
                    top: centerTop,
                    bottom: centerBottom,
                    left: 10,
                    right: 10,
                  ),
                  AnimatedPositioned(
                    duration: Duration(seconds: 2),
                    child: TextField(decoration: InputDecoration(hintText: "entrer votre mot de passe")),
                    top: (verification)?centerTop:max-40,
                    bottom: (verification)?centerBottom:10,
                    left: 10,
                    right: 10,
                  ),
                  AnimatedPositioned(
                      top: (verification)?0:10,
                      left: (verification)?0:10,
                      right: (verification)?0:max-100,
                      bottom: (verification)?0:max -100,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        child: CircleAvatar(radius: 50,backgroundImage: AssetImage("lib/images/logo_flutter.jpg")),
                      ),
                    duration: Duration(seconds: 2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}