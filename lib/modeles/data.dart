import 'package:flutter/material.dart';
import '../vues/pages/AnimatedContainer.dart';
import '../vues/pages/AutreAnimated.dart';
import '../vues/pages/LeHeros.dart';
import '../vues/pages_autre_animation/FadeIn.dart';
import '../vues/pages_autre_animation/LeCrossFade.dart';
import '../vues/pages_autre_animation/Opacite.dart';
import '../vues/pages_autre_animation/Positionnement.dart';
import '../vues/pages_autre_animation/PysicalModele.dart';
import '../vues/pages_autre_animation/Taille.dart';
import '../vues/pages_autre_animation/TexteStyle.dart';
import 'LesPages.dart';

class Data{

  //renvoie les pages principales de l'application
  List<LesPages>lesPages(){
    return [
      LesPages(titre: "Animated container", icons:const Icon(Icons.score),trailing:const Icon(Icons.chevron_right), page: const AnimatedContainers()),
      LesPages(titre: "Les autres Animated", icons:const Icon(Icons.local_movies), trailing:const Icon(Icons.chevron_right),page: const AutreAnimated()),
      LesPages(titre: "Le heros", icons:const Icon(Icons.ice_skating),trailing:const Icon(Icons.chevron_right), page: const LeHeros())
    ];
  }
  //renvoie les pages de la section les autres animations
  List<LesPages>lesPagesDesAutresAnimations(){
    return [
      LesPages(titre: "Fade in", icons:const Icon(Icons.menu),trailing:const Icon(Icons.chevron_right), page: const FadeIn()),
      LesPages(titre: "Opacité", icons:const Icon(Icons.menu), trailing:const Icon(Icons.chevron_right),page: const Opacite()),
      LesPages(titre: "Le Cross fade", icons:const Icon(Icons.menu),trailing:const Icon(Icons.chevron_right), page: const LeCrossFade()),
      LesPages(titre: "TextStyle", icons:const Icon(Icons.menu),trailing:const Icon(Icons.chevron_right), page: const TexteStyle()),
      LesPages(titre: "Taille", icons:const Icon(Icons.menu), trailing:const Icon(Icons.chevron_right),page: const Taille()),
      LesPages(titre: "Positionnement", icons:const Icon(Icons.menu),trailing:const Icon(Icons.chevron_right), page: const Positionnement()),
      LesPages(titre: "Pysical modele", icons:const Icon(Icons.menu),trailing:const Icon(Icons.chevron_right), page: const PysicalModele())
    ];
  }
}