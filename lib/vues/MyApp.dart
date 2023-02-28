import 'package:flutter/material.dart';
import '../controllers/MainController.dart';
import '../modeles/LesPages.dart';
import '../modeles/data.dart';

class MyApp extends StatelessWidget {

 const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<LesPages>lesPages = Data().lesPages();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainController(lesPages:lesPages),
    );
  }
}