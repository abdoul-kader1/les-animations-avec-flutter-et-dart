import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/autres_animations/AnimatedSize.dart';

class PysicalModele extends StatelessWidget{

  const PysicalModele({super.key});

  @override
  Widget build(BuildContext context) {
    bool verfication = context.watch<LeAnimatedSize>().physicalModele;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Le PysicalModele"),
      ),
      body: Center(
          child: InkWell(
            onTap: (){context.read<LeAnimatedSize>().changePhysicalModele();},
            child: AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: (verfication)?8:0,
              color: (verfication)?Colors.teal:Colors.brown,
              shadowColor: (verfication)?Colors.grey:Colors.white,
              duration: Duration(seconds: 2),
              child: Container(
                width: 100,
                height: 100,
              ),
            ),
          )
      ),
    );
  }

}