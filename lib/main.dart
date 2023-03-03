import 'package:animations_flutter/providers/IndexMenu.dart';
import 'package:animations_flutter/providers/animated_container/ChangeProprieterContainer.dart';
import 'package:animations_flutter/providers/animated_cross_fade/AnimatedCrossFade.dart';
import 'package:animations_flutter/providers/animated_default_text_style/LeAnimatedDefaultTextStyle.dart';
import 'package:animations_flutter/providers/animated_opacity/ChangeOpacite.dart';
import 'package:animations_flutter/providers/animated_positioned/AnimatedPositionned.dart';
import 'package:animations_flutter/providers/animated_size/AnimatedSize.dart';
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
          ChangeNotifierProvider(create: (_)=>LeAnimatedCrossFades()),
          ChangeNotifierProvider(create: (_)=>LeAnimatedDefaultTextStyle()),
          ChangeNotifierProvider(create: (_)=>LeAnimatedSize()),
          ChangeNotifierProvider(create: (_)=>AnimatedPositioneds()),
        ],
        child:const MyApp(),
      )
  );
}