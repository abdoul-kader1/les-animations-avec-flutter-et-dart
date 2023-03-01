import 'package:flutter/material.dart';
import '../modeles/LesPages.dart';
import 'package:provider/provider.dart';
import '../providers/IndexMenu.dart';
import '../vues/ListVuesDrawers.dart';

class MainController extends StatelessWidget{

  final List<LesPages>lesPages;

  const MainController({super.key,required this.lesPages});

  @override
  Widget build(BuildContext context) {
    final pages = lesPages.map((element) =>element.page).toList();
    final titre = lesPages.map((element) => element.titre).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(titre[context.watch<IndexMenu>().indexMenu]),
      ),
      drawer:Drawer(child:ListVuesDrawers(lesPages:lesPages)),
      body: pages[context.watch<IndexMenu>().indexMenu]
    );
  }
}