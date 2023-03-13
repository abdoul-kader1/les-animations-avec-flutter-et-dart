import 'package:animations_flutter/widgets/MaScaffold.dart';
import 'package:flutter/material.dart';

class ScaleTransitione extends StatefulWidget{

  const ScaleTransitione({super.key});

  @override
  ScaleTransitionState createState()=>ScaleTransitionState();
}

class ScaleTransitionState extends State<ScaleTransitione>{
  @override
  Widget build(BuildContext context) {
    return MaScaffold(
        titre: "rotation transition",
        body: Center(child: Text("Bienvenu dans cette section ScaleTransition"))
    );
  }
}
