import 'package:flutter/material.dart';
import '../modeles/LesPages.dart';
import 'package:provider/provider.dart';
import '../providers/IndexMenu.dart';
import '../vues/ListVues.dart';

class MainController extends StatelessWidget{

  List<LesPages>lesPages;

  MainController({super.key,required this.lesPages});

  @override
  Widget build(BuildContext context) {
    final pages = lesPages.map((element) =>element.page).toList();
    final titre = lesPages.map((element) => element.titre).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(titre[context.watch<IndexMenu>().indexMenu]),
      ),
      drawer:Drawer(child:ListVues(lesPages:lesPages)),
      body: pages[context.watch<IndexMenu>().indexMenu]
    );
  }

}