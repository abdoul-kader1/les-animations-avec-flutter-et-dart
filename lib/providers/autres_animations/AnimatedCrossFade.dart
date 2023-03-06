import 'package:flutter/material.dart';

class LeAnimatedCrossFades with ChangeNotifier{

  bool crossFade = true;

  changeCrossFade(){
    crossFade = !crossFade;
    notifyListeners();
  }
}