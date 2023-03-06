import 'package:flutter/material.dart';
import '../../controllers/AnimatedListeController.dart';
import '../../modeles/data.dart';

class AnimatedListe extends StatelessWidget{

  const AnimatedListe({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> lesFruits = Data().lesFruits();
    return  AnimatedListController(lesFruits:lesFruits);
  }

}