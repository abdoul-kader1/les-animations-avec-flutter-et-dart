import 'package:animations_flutter/providers/IndexMenu.dart';
import 'package:animations_flutter/vues/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(_)=>IndexMenu()),
        ],
        child:const MyApp(),
      )
  );
}