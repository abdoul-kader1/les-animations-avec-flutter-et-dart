import 'package:flutter/material.dart';
import '../../controllers/AutreAnimationController.dart';
import '../../modeles/LesPages.dart';
import '../../modeles/data.dart';

class AutreAnimated extends StatelessWidget{

  const AutreAnimated ({super.key});

  @override
  Widget build(BuildContext context) {
    List<LesPages>lesPages = Data().lesPagesDesAutresAnimations();
    return AutreAnimationController(lesPages:lesPages);
  }

}