import 'package:flutter/material.dart';

class LeAnimatedSize with ChangeNotifier {

  bool size = false;
  bool physicalModele = false;

  changeSize(){
    size = !size;
    notifyListeners();
  }
  changePhysicalModele(){
    physicalModele = !physicalModele;
    notifyListeners();
  }
}