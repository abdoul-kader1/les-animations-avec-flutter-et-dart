import 'package:flutter/material.dart';

class IndexMenu with ChangeNotifier{

   int indexMenu = 0;

  changeIndexMenu(int index){
    indexMenu = index;
    notifyListeners();
  }

}