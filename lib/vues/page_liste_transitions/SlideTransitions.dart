import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class SlideTransitions extends StatefulWidget{

  const SlideTransitions({super.key});

  @override
  SlideTransitionsState createState()=>SlideTransitionsState();
}

class SlideTransitionsState extends State<SlideTransitions>{
  @override
  Widget build(BuildContext context) {
    return MaScaffold(
        titre: "rotation transition",
        body: Center(child: Text("Bienvenu dans cette section SlideTransitions"))
    );
  }
}