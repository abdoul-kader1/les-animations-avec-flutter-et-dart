import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/autres_animations/AnimatedCrossFade.dart';

class LeCrossFade extends StatelessWidget{

  const LeCrossFade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Le CrossFade"),
      ),
      body: Center(
        child: InkWell(
          child: AnimatedCrossFade(
            firstChild: Image.asset("lib/images/logo_flutter.jpg"),
            secondChild: Text("Animation avec un cross fade"),
            crossFadeState:(context.watch<LeAnimatedCrossFades>().crossFade?CrossFadeState.showFirst:CrossFadeState.showSecond),
            duration: Duration(seconds: 2),
          ),
          onTap: (){
            context.read<LeAnimatedCrossFades>().changeCrossFade();
          },
        ),
      ),
    );
  }

}