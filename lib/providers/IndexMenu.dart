import 'package:flutter/material.dart';

class IndexMenu with ChangeNotifier{

  int indexMenu = 0;

  ChangeindexMenu(int index){
    indexMenu = index;
    notifyListeners();
  }

}