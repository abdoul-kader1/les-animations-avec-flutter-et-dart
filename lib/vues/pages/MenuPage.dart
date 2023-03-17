import 'package:flutter/material.dart';

import 'MenuAnime.dart';

class MenuPage extends StatelessWidget{

  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.orangeAccent,
      child: MenuAnime(),
    );
  }

}