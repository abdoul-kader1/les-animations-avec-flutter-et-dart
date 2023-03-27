import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/PreloadAnimation.dart';

class Acceuil extends StatefulWidget{

  const Acceuil({super.key});

  @override
  AcceuilState createState()=>AcceuilState();
}

class AcceuilState extends State<Acceuil>{
  @override
  Widget build(BuildContext context) {
   return Stack(
       children: [
         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
         ),
         ClipPath(
           clipper: CustomClipperPaht1(),
           child: Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height*0.5,
             decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage("lib/images/acceuil/pexels-jhovani-morales-12319900.jpg"),
                     colorFilter: ColorFilter.mode(Colors.black38,BlendMode.darken),
                     fit: BoxFit.cover
                 )
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(padding:EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.width*0.15)),
                 PreloadAnimation(
                   enfant: Padding(
                       padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03),
                       child: Text("Bienvenue",style: TextStyle(fontSize: 50,color: Colors.white),)
                   ),
                   millisecondes: 1000,
                 ),
                 PreloadAnimation(
                     enfant: Padding(
                         padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03),
                         child: Text("Sur animation flutter",style: TextStyle(fontSize: 20,color: Colors.white))
                     ),
                     millisecondes: 2000
                 )
               ],
             ),
           ),
         ),
         Positioned(
             top: MediaQuery.of(context).size.height*0.4,
             left:0 ,
             right: 0,
             child: Container(
               //color: Colors.orangeAccent,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   PreloadAnimation(
                       enfant: Container(
                         margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.4),
                         width: 200,
                         height: 110,
                         child: Image.asset("lib/images/acceuil/kisspng-car-clip-art-audi-q3-car-5a74c1dadf5c36.7852431415176012429149.png"),
                       ),
                       millisecondes: 3000
                   ),
                   Padding(padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.03)),
                   PreloadAnimation(
                       enfant: Text(
                         "Cette application a été créée par serifou Kader dans le but de montrer ces exercices issus de sa formation sur udemy",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 18
                         ),
                       ),
                       millisecondes: 4000
                   ),
                 ],
               ),
             )
         ),
       ],
     );
  }
}
class CustomClipperPaht1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path1 = Path();
    path1.moveTo(0,0);
    path1.lineTo(w,0);
    path1.lineTo(w,h*0.7811634);
    path1.lineTo(0,h);
    path1.quadraticBezierTo(0,h*0.8040166,0,0);
    path1.close();
    return path1 ;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
