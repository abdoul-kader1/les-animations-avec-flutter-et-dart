import 'package:flutter/material.dart';

class LeAnimatedSize with ChangeNotifier {

  bool size = false;
  changeSize(){
    size = !size;
    notifyListeners();
  }
}