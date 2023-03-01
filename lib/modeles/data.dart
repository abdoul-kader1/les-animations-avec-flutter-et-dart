import 'package:flutter/material.dart';
import '../vues/pages/AnimatedContainer.dart';
import '../vues/pages/AutreAnimated.dart';
import '../vues/pages/LeHeros.dart';
import 'LesPages.dart';

class Data{

  List<LesPages>lesPages(){
    return [
      LesPages(titre: "Animated container", icons:const Icon(Icons.score),trailing:const Icon(Icons.chevron_right), page: const AnimatedContainers()),
      LesPages(titre: "Les autres Animated", icons:const Icon(Icons.ice_skating), trailing:const Icon(Icons.chevron_right),page: const AutreAnimated()),
      LesPages(titre: "Le heros", icons:const Icon(Icons.ice_skating),trailing:const Icon(Icons.chevron_right), page: const LeHeros())
    ];
  }
}