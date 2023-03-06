import 'package:flutter/material.dart';
import '../../controllers/HerosController.dart';
import '../../modeles/data.dart';
import '../../modeles/villeGrerk.dart';

class LeHeros extends StatelessWidget{

  const LeHeros({super.key});

  @override
  Widget build(BuildContext context) {
    List <VilleGrerk>lesVilles = Data().lesVillesGreck();
    return HerosController(lesVilles:lesVilles);
  }

}