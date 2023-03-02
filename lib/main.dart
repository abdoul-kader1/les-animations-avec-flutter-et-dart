import 'package:animations_flutter/providers/IndexMenu.dart';
import 'package:animations_flutter/providers/animated_container/ChangeProprieterContainer.dart';
import 'package:animations_flutter/providers/animated_cross_fade/AnimatedCrossFade.dart';
import 'package:animations_flutter/providers/animated_opacity/ChangeOpacite.dart';
import 'package:animations_flutter/vues/pages/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(_)=>IndexMenu()),
          ChangeNotifierProvider(create: (_)=>ChangeProprieterContainer()),
          ChangeNotifierProvider(create: (_)=>ChangeOpacite()),
          ChangeNotifierProvider(create: (_)=>LeAnimatedCrossFades())
        ],
        child:const MyApp(),
      )
  );
}