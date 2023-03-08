import 'package:flutter/material.dart';
import '../../controllers/ControllerListeTransition.dart';
import '../../modeles/LesPages.dart';
import '../../modeles/data.dart';

class Transitiions extends StatelessWidget{

  const Transitiions({super.key});

  @override
  Widget build(BuildContext context) {
    List<LesPages> lesPages = Data().lesTransitions();
    return ControllerListeTransition(lesPages:lesPages);
  }

}