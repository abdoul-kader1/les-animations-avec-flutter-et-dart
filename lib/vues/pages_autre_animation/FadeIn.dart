import 'package:flutter/material.dart';

class FadeIn extends StatelessWidget{

  const FadeIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Le Fade In"),
      ),
      body:Center(
        child: FadeInImage(
          placeholder:AssetImage('lib/images/logo_flutter.jpg'),
          image: NetworkImage("https://cdn.pixabay.com/photo/2023/02/02/13/27/cat-7762887_960_720.jpg"),
          width: 300,
          height: 300,
          fit: BoxFit.cover,
          fadeInDuration: Duration(seconds: 1),
          fadeOutDuration:  Duration(seconds: 1),
          fadeInCurve: Curves.bounceOut,
          fadeOutCurve: Curves.linear,
        ),
      ),
    );
  }
}