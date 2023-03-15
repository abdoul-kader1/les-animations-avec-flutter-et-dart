import 'package:flutter/material.dart';
import '../../modeles/Exercice.dart';
import 'dart:math' as math;

class GraphiqueAnime extends StatefulWidget{

  const GraphiqueAnime({super.key});

  @override
  GraphiqueAnimeState createState()=>GraphiqueAnimeState();

}

class GraphiqueAnimeState extends State<GraphiqueAnime>{
  
  List<Exercice>exercices = [Exercice(week: 0),Exercice(week: 1),Exercice(week: 2),Exercice(week: 3),Exercice(week: 4)];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double valeur = MediaQuery.of(context).size.width*0.9;
   return SingleChildScrollView(
     child: Column(
       children: [
         Text("Semaine numéros : ${currentIndex+1}"),
         Container(
           width: valeur,
           height: valeur,
           child: Card(
             child: charts(valeur, exercices[currentIndex]),
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             ElevatedButton(
                 onPressed: (){
                   setState(() {
                     if(currentIndex>0)currentIndex--;
                   });
                 },
                 child: Text("Précédent")
             ),ElevatedButton(
                 onPressed:(){
                   setState(() {
                     if(currentIndex<exercices.length-1)currentIndex++;
                   });
                 },
                 child: Text("Suivant")
             )
           ],
         )
       ],
     ),
   );
  }

  Row charts(double max,Exercice exercice){
    double width = max/10;
    int? maxRuns = exercice.runs?.reduce(math.max);
    print(maxRuns);
    print(exercice.runs);
    double ration = max /maxRuns!;
    List<AnimatedContainer>container = [];
    exercice.runs?.forEach((element) {
      Color color = getColors(element,maxRuns);
      container.add(myAnimation(width, ration*element, element, color));
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: container,
    );
  }
   getColors(int valeur,int max){
    if(max*0.75<valeur){
      return Colors.green;
    }else if(max*0.5<valeur){
      return Colors.yellow;
    }else if(max*0.25<valeur){
      return Colors.orange;
    }else{
      return Colors.red;
    }
  }

  AnimatedContainer myAnimation(double width ,double height, int valeur, Color couleur){
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: width,
      height: height,
      curve: Curves.linear,
      color: couleur,
      child: Center(child: Text(valeur.toString())),
    );
  }
}