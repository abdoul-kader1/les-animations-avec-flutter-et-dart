import 'package:flutter/material.dart';
import '../../modeles/villeGrerk.dart';

class DetailHeros extends StatelessWidget{

  VilleGrerk lesVilles;
  Hero heros;

  DetailHeros({required this.lesVilles,required this.heros});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("La ville ${lesVilles.nom}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.5,
              child: heros,
            ),
            Padding(padding: EdgeInsets.all(10),child:Text(lesVilles.description,textAlign: TextAlign.justify))
          ],
        ),
      ),
    );
  }

}