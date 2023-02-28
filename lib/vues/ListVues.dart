import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../modeles/LesPages.dart';
import '../providers/IndexMenu.dart';

class ListVues extends StatelessWidget{

  List<LesPages>lesPages;

  ListVues({required this.lesPages});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: lesPages.length+1,
        separatorBuilder: (context,i)=>divider(i),
        itemBuilder:(context,i)=>contenu(i,context)
    );
  }

  Widget divider(int index){
    if(index!=0){
      return Divider();
    }else{
      return Container();
    }
  }

  Widget contenu(int index,BuildContext context){
    final lesTitres = lesPages.map((titre) => Text(titre.titre)).toList();
    final lesTrailing = lesPages.map((element) => element.trailing).toList();
    final lesIcons = lesPages.map((element) =>element.icons).toList();
    if(index == 0){
      return SizedBox(
        height: 150,
        child: DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(radius:40,backgroundImage:AssetImage("lib/images/logo_flutter.jpg")),
              Text("Les animations avec flutter")
            ],
          ),
        ),
      );
    }else{
      final nouveauIndex= index-1;
      return ListTile(
        title:lesTitres[nouveauIndex],
        trailing:lesTrailing[nouveauIndex],
        leading: lesIcons[nouveauIndex],
        onTap: (){
          Navigator.pop(context);
          context.read<IndexMenu>().ChangeindexMenu(nouveauIndex);
        },
      );
    }
  }

}