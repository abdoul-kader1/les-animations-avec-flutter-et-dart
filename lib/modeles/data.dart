import 'package:animations_flutter/modeles/villeGrerk.dart';
import 'package:flutter/material.dart';
import '../vues/page_liste_transitions/DecoratedBox.dart';
import '../vues/page_liste_transitions/LeFade.dart';
import '../vues/page_liste_transitions/PositionTransition.dart';
import '../vues/page_liste_transitions/RotationPosition.dart';
import '../vues/page_liste_transitions/ScaleTransition.dart';
import '../vues/page_liste_transitions/SizeTransitions.dart';
import '../vues/page_liste_transitions/SlideTransitions.dart';
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
      LesPages(titre: "Opacit??", icons:const Icon(Icons.menu), trailing:const Icon(Icons.chevron_right),page: const Opacite()),
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
      VilleGrerk(nom: "Athenes",image:"lib/images/Greek Cities/Athens.jpg",description: "Ath??nes, capitale actuelle de la Gr??ce, ??tait ??galement le c??ur de la Gr??ce antique, une civilisation riche et puissante. Les monuments construits au Ve si??cle av. J.-C. continuent de dominer la ville, comme la citadelle de l???Acropole, qui a ??t?? ??rig??e au sommet d???une colline. Elle est surplomb??e par d???autres constructions anciennes telles que le temple ?? colonnes du Parth??non. Le mus??e de l???Acropole et le mus??e national arch??ologique exposent des sculptures, des vases, des bijoux et d???autres objets de l?????poque antique."),
      VilleGrerk(nom: "Santorin",image:"lib/images/Greek Cities/Santorin.jpg",description: "Santorin est l'une des ??les des Cyclades, dans la mer ??g??e. Elle a ??t?? d??truite par une ??ruption volcanique au XVIe si??cle av. J.-C., qui a d??finitivement fa??onn?? ses paysages accident??s. Les maisons blanches en forme de cube de ses 2 villes principales, Fira et Oia, sont accroch??es sur des falaises surplombant une caldeira (crat??re) sous-marine. Elles dominent la mer, des petites ??les ?? l'ouest ainsi que des plages compos??es de galets de lave noirs, rouges et blancs."),
      VilleGrerk(nom: "Meteores", image:"lib/images/Greek Cities/Meteores.jpg", description:"Les M??t??ores sont une formation g??ologique du nord de la Gr??ce, en Hestiotide, dans la vall??e du P??n??e. Ils abritent des monast??res chr??tiens orthodoxes perch??s au sommet de falaises et pitons rocheux gris, sculpt??s par l'??rosion. Le site est inscrit au patrimoine mondial de l'UNESCO depuis 1988"),
      VilleGrerk(nom: "Sounion", image:"lib/images/Greek Cities/Sounion.jpg", description:"Le cap Sounion est un cap de Gr??ce qui s'avance ?? 45 kilom??tres au sud-est d???Ath??nes dans la mer ??g??e et qui constitue l'extr??mit?? de l'Attique. Il est surtout renomm?? pour les ruines d'un temple d??di?? ?? Pos??idon. Il est class?? parmi les parcs nationaux de Gr??ce."),
      VilleGrerk(nom: "Corfou", image:"lib/images/Greek Cities/Corfou.jpg", description:"Corfou, une ??le au large de la c??te nord-ouest de la mer Ionienne, se caract??rise par ses montagnes escarp??es et ses nombreuses stations baln??aires. Son patrimoine culturel t??moigne d???ann??es pass??es sous domination v??nitienne, fran??aise et britannique, avant son rattachement ?? la Gr??ce en 1864. La ville de Corfou, domin??e par deux forteresses v??nitiennes imposantes, dispose de ruelles m??di??vales sinueuses, d???une arcade ?? l???architecture fran??aise et du grand palais de St. Michel et St. Georges."),
      VilleGrerk(nom: "Delphes", image:"lib/images/Greek Cities/Delphi.jpg", description:"Delphes  est le site d'un sanctuaire panhell??nique, situ?? au pied du mont Parnasse, en Phocide, o?? parle l'oracle d'Apollon ?? travers sa proph??tesse, la Pythie ; il abrite ??galement l'Omphalos ou ?? nombril du monde ??. Investie d'une signification sacr??e, Delphes est du vie au ive si??cle av. J.-C. le v??ritable centre et le symbole de l'unit?? du monde grec. La Pythie se trouve assise dans une salle du temple d???Apollon et parlait au nom du dieu. Elle r??pondait aux questions qui lui ??taient pos??es en ??mettant des cris inarticul??s, aussit??t traduits en phrases par des pr??tres. Les sanctuaires panhell??niques sont des complexes architecturaux ext??rieurs aux cit??s. Ils constituent les seuls lieux o?? tous les anciens Grecs, et certains barbares (Lydiens et ??trusques) prennent part ?? des c??l??brations religieuses communes."),
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
      LesPages(titre: "Fade", icons:const Icon(Icons.compare_arrows), trailing:const Icon(Icons.chevron_right),page: const LeFade()),
      LesPages(titre: "Positionned", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const PositionTransition()),
      LesPages(titre: "Rotation", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const RotationPosition()),
      LesPages(titre: "Scale", icons:const Icon(Icons.compare_arrows), trailing:const Icon(Icons.chevron_right),page: const ScaleTransitione()),
      LesPages(titre: "Size", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const SizeTransitions()),
      LesPages(titre: "Slide", icons:const Icon(Icons.compare_arrows),trailing:const Icon(Icons.chevron_right), page: const SlideTransitions())

    ];
  }
}