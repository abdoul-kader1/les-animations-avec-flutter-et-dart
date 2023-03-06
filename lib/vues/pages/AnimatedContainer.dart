import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/autres_animations/ChangeProprieterContainer.dart';

class AnimatedContainers extends StatelessWidget{

   const AnimatedContainers({super.key});

  @override
  Widget build(BuildContext context) {

    Duration duration = const Duration(seconds: 2);
    double min = 0;
    double max = 300;
    final regarderShadow = context.watch<ChangeProprieterContainer>().shadow;
    
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          AnimatedContainer(
              width: context.watch<ChangeProprieterContainer>().largeur,
              height: context.watch<ChangeProprieterContainer>().hauteur,
              curve: Curves.bounceOut,
              decoration:  BoxDecoration(
                borderRadius:  BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: context.watch<ChangeProprieterContainer>().couleur,
                      offset: regarderShadow?Offset(3,0):Offset(0, 0),
                      spreadRadius: regarderShadow?2.5:0.0,
                      blurRadius: regarderShadow?3:0.0
                  )
                ],
              ),
              duration:duration,
            ),
          Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.7,
            child:ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    couleurBoutton("Bleu gris",Colors.blueGrey,context),
                    couleurBoutton("Violet foncé",Colors.deepPurple,context),
                    couleurBoutton("Accent vert",Colors.greenAccent,context),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    Text("hauteur : ${context.watch<ChangeProprieterContainer>().hauteur.toInt()}"),
                    Slider(
                        min: min,
                        max: max,
                        divisions: 5,
                        value: context.watch<ChangeProprieterContainer>().hauteur,
                        onChanged:(value){
                          context.read<ChangeProprieterContainer>().changeHauteur(value);
                        }
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("largeur : ${context.watch<ChangeProprieterContainer>().largeur.toInt()}"),
                    Slider(
                        min: min,
                        max: max,
                        divisions: 5,
                        value: context.watch<ChangeProprieterContainer>().largeur,
                        onChanged:(value){
                          context.read<ChangeProprieterContainer>().changeLargeur(value);
                        }
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Shadow : ${context.watch<ChangeProprieterContainer>().shadow}"),
                    Switch(
                        value:context.watch<ChangeProprieterContainer>().shadow,
                        onChanged:(valeur){
                          context.read<ChangeProprieterContainer>().changeShadow(valeur);
                        }
                    )
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }

  FloatingActionButton couleurBoutton(String nom,Color couleur,BuildContext context){
    return FloatingActionButton(
        onPressed:(){
          context.read<ChangeProprieterContainer>().changeCouleur(couleur);
        },
        backgroundColor: couleur,
        heroTag: nom,
    );
  }

}