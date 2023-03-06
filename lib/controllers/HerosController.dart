import 'package:flutter/material.dart';
import '../modeles/villeGrerk.dart';
import '../vues/page_hero/MaTileHeros.dart';

class HerosController extends StatelessWidget{

  final List<VilleGrerk>lesVilles;

  HerosController({required this.lesVilles});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder:(context,index)=>MaTileHeros(lesVilles:lesVilles[index],index: index),
        separatorBuilder: (context,index)=>const Divider(),
        itemCount: lesVilles.length
    );
  }

}