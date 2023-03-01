import 'package:animations_flutter/providers/IndexMenu.dart';
import 'package:animations_flutter/providers/animated_container/ChangeProprieterContainer.dart';
import 'package:animations_flutter/vues/pages/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(_)=>IndexMenu()),
          ChangeNotifierProvider(create: (_)=>ChangeProprieterContainer())
        ],
        child:const MyApp(),
      )
  );
}