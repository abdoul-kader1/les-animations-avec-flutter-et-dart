import 'package:animations_flutter/modeles/villeGrerk.dart';
import 'package:flutter/material.dart';
import '../vues/page_liste_transitions/DecoratedBox.dart';
import '../vues/pages/AnimatedContainer.dart';
import '../vues/pages/AnimatedList.dart';
import '../vues/pages/AutreAnimated.dart';
import '../vues/pages/LeHeros.dart';
import '../vues/pages/Transitions.dart';
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
      LesPages(titre: "Le heros", icons:const Icon(Icons.flash_on),trailing:const Icon(Icons.chevron_right), page: const LeHeros()),
      LesPages(titre: "Animated list", icons:const Icon(Icons.list),trailing:const Icon(Icons.chevron_right), page: const AnimatedListe()),
      LesPages(titre: "Listes des transitions", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const Transitiions()),
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
  //renvoie la listes des villes de grerk
  List<VilleGrerk>lesVillesGreck(){
    return [
      VilleGrerk(nom: "Athenes",image:"lib/images/Greek Cities/Athens.jpg",description: "Athènes, capitale actuelle de la Grèce, était également le cœur de la Grèce antique, une civilisation riche et puissante. Les monuments construits au Ve siècle av. J.-C. continuent de dominer la ville, comme la citadelle de l’Acropole, qui a été érigée au sommet d’une colline. Elle est surplombée par d’autres constructions anciennes telles que le temple à colonnes du Parthénon. Le musée de l’Acropole et le musée national archéologique exposent des sculptures, des vases, des bijoux et d’autres objets de l’époque antique."),
      VilleGrerk(nom: "Santorin",image:"lib/images/Greek Cities/Santorin.jpg",description: "Santorin est l'une des îles des Cyclades, dans la mer Égée. Elle a été détruite par une éruption volcanique au XVIe siècle av. J.-C., qui a définitivement façonné ses paysages accidentés. Les maisons blanches en forme de cube de ses 2 villes principales, Fira et Oia, sont accrochées sur des falaises surplombant une caldeira (cratère) sous-marine. Elles dominent la mer, des petites îles à l'ouest ainsi que des plages composées de galets de lave noirs, rouges et blancs."),
      VilleGrerk(nom: "Meteores", image:"lib/images/Greek Cities/Meteores.jpg", description:"Les Météores sont une formation géologique du nord de la Grèce, en Hestiotide, dans la vallée du Pénée. Ils abritent des monastères chrétiens orthodoxes perchés au sommet de falaises et pitons rocheux gris, sculptés par l'érosion. Le site est inscrit au patrimoine mondial de l'UNESCO depuis 1988"),
      VilleGrerk(nom: "Sounion", image:"lib/images/Greek Cities/Sounion.jpg", description:"Le cap Sounion est un cap de Grèce qui s'avance à 45 kilomètres au sud-est d’Athènes dans la mer Égée et qui constitue l'extrémité de l'Attique. Il est surtout renommé pour les ruines d'un temple dédié à Poséidon. Il est classé parmi les parcs nationaux de Grèce."),
      VilleGrerk(nom: "Corfou", image:"lib/images/Greek Cities/Corfou.jpg", description:"Corfou, une île au large de la côte nord-ouest de la mer Ionienne, se caractérise par ses montagnes escarpées et ses nombreuses stations balnéaires. Son patrimoine culturel témoigne d’années passées sous domination vénitienne, française et britannique, avant son rattachement à la Grèce en 1864. La ville de Corfou, dominée par deux forteresses vénitiennes imposantes, dispose de ruelles médiévales sinueuses, d’une arcade à l’architecture française et du grand palais de St. Michel et St. Georges."),
      VilleGrerk(nom: "Delphes", image:"lib/images/Greek Cities/Delphi.jpg", description:"Delphes  est le site d'un sanctuaire panhellénique, situé au pied du mont Parnasse, en Phocide, où parle l'oracle d'Apollon à travers sa prophétesse, la Pythie ; il abrite également l'Omphalos ou « nombril du monde ». Investie d'une signification sacrée, Delphes est du vie au ive siècle av. J.-C. le véritable centre et le symbole de l'unité du monde grec. La Pythie se trouve assise dans une salle du temple d’Apollon et parlait au nom du dieu. Elle répondait aux questions qui lui étaient posées en émettant des cris inarticulés, aussitôt traduits en phrases par des prêtres. Les sanctuaires panhelléniques sont des complexes architecturaux extérieurs aux cités. Ils constituent les seuls lieux où tous les anciens Grecs, et certains barbares (Lydiens et Étrusques) prennent part à des célébrations religieuses communes."),
    ];
  }
  //renvoue la liste des fruits pour la page animated liste controller
  List<String>lesFruits(){
    return ["Banane","Orange","Mangue","Pomme"];
  }
  //renvoie les pages de la listes des transitions
  List<LesPages>lesTransitions(){
    return [
      LesPages(titre: "Decorated Box", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const DecoratedBoxs()),
      LesPages(titre: "Fade", icons:const Icon(Icons.compare_arrows), trailing:const Icon(Icons.chevron_right),page: const Opacite()),
      LesPages(titre: "Positionned", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const LeCrossFade()),
      LesPages(titre: "Rotation", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const TexteStyle()),
      LesPages(titre: "Scale", icons:const Icon(Icons.compare_arrows), trailing:const Icon(Icons.chevron_right),page: const Taille()),
      LesPages(titre: "Size", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const Positionnement()),
      LesPages(titre: "Slide", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const PysicalModele())
    ];
  }
}