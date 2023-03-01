import 'package:flutter/material.dart';
import '../../controllers/MainController.dart';
import '../../modeles/LesPages.dart';
import '../../modeles/data.dart';

class MyApp extends StatelessWidget {

 const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<LesPages>lesPages = Data().lesPages();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation flutter',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: MainController(lesPages:lesPages),
    );
  }
}