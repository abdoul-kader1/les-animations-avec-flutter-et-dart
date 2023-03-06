import 'package:flutter/material.dart';

class AnimatedPositioneds with ChangeNotifier{

  bool isConnected = false;

  changeEtatConnexion(){
    isConnected = !isConnected;
    notifyListeners();
  }

}