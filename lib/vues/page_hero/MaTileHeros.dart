import 'package:flutter/material.dart';
import '../../modeles/villeGrerk.dart';
import '../../widgets/Redirection.dart';
import 'DetailHeros.dart';

class MaTileHeros extends StatelessWidget{

  VilleGrerk lesVilles;
  int index;

  MaTileHeros({required this.lesVilles,required this.index});


  @override
  Widget build(BuildContext context) {
    Hero leHeros = Hero(
      tag: index,
      flightShuttleBuilder:(context,animation,flightDirection,fromHeroContext,toHeroContext){
        return RotationTransition(
          turns: animation,
          child:Image.asset(lesVilles.image,width: 100,height: 100,fit: BoxFit.cover),
        );
      },
      child:Image.asset(lesVilles.image,width: 100,height: 100,fit: BoxFit.cover),
    );
    return ListTile(
      title: Text(lesVilles.nom),
      leading: leHeros,
      onTap: (){
        Redirection().redirection(context,DetailHeros(lesVilles:lesVilles,heros: leHeros));
      },
    );
  }
}