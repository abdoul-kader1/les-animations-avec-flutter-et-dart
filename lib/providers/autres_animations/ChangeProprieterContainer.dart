import 'package:flutter/material.dart';

class ChangeProprieterContainer with ChangeNotifier{

  double hauteur  = 150;
  double largeur = 150;
  Color couleur = Colors.brown;
  bool shadow =  true;

  changeHauteur(double value){
    hauteur = value;
    notifyListeners();
  }
  changeLargeur(double value){
    largeur = value;
    notifyListeners();
  }
  changeCouleur(Color value){
    couleur = value;
    notifyListeners();
  }
  changeShadow(bool value){
    shadow = value;
    notifyListeners();
  }

}