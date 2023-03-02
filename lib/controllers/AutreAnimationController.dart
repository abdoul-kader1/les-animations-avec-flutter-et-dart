import 'package:flutter/material.dart';
import '../modeles/LesPages.dart';
import '../widgets/MaTile.dart';

class AutreAnimationController extends StatelessWidget{

  final List<LesPages>lesPages;

  AutreAnimationController({required this.lesPages});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder:(context,index)=>MaTile(lesPages:lesPages[index]),
        separatorBuilder: (context,index)=>const Divider(),
        itemCount: lesPages.length
    );
  }

}