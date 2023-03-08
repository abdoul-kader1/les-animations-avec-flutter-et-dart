import 'package:flutter/material.dart';
import '../modeles/LesPages.dart';
import '../widgets/MaTile.dart';

class ControllerListeTransition extends StatelessWidget{

  List<LesPages>lesPages;

  ControllerListeTransition({required this.lesPages,super.key});

  @override
  Widget build(BuildContext context) {
   return ListView.separated(
       itemBuilder: (context,index)=>MaTile(lesPages:lesPages[index]),
       separatorBuilder: (context,index)=>const Divider(),
       itemCount: lesPages.length
   );
  }

}