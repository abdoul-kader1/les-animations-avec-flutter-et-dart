import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/animated_opacity/ChangeOpacite.dart';

class Opacite extends StatelessWidget{

  const Opacite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("L' Opacité"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:children(context),
        ),
      ),
    );
  }

  List<Widget> children(BuildContext context){
    List<Widget>liste = [];
    liste.add(Text("Opacité"));
    liste.add(
      AnimatedOpacity(
          opacity:context.watch<ChangeOpacite>().opacite?0:1,
          duration: Duration(seconds: 2),
          child: Image.asset("lib/images/logo_flutter.jpg"),
      )
    );
    liste.add
      (TextButton(
        onPressed:(){
          context.read<ChangeOpacite>().changeOpacite();
        },
        child:Text((context.watch<ChangeOpacite>().opacite)?"Montrer":"Cacher")
      )
    );
    return liste;
  }

}