import 'package:flutter/material.dart';
import '../modeles/LesPages.dart';
import 'Redirection.dart';

class MaTile extends StatelessWidget{

  LesPages lesPages;

  MaTile({required this.lesPages});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(lesPages.titre),
      trailing: lesPages.trailing,
      leading: lesPages.icons,
      onTap: (){
        Redirection().redirection(context,lesPages.page);
      },
    );
  }

}