import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class SizeTransitions extends StatefulWidget{

  const SizeTransitions({super.key});

  @override
  SizeTransitionsState createState()=> SizeTransitionsState();
}

class SizeTransitionsState extends State<SizeTransitions>{
  @override
  Widget build(BuildContext context) {
    return MaScaffold(
        titre: "rotation transition",
        body: Center(child: Text("Bienvenu dans cette section SizeTransitions"))
    );
  }
}