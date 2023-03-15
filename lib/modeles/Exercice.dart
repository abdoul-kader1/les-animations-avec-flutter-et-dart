import 'dart:math';

class Exercice{
  int week;
  List<int>?runs;
  Exercice({required this.week}){
    runs = [];
    for(int x = 0;x<7;x++){
      int aleatoire = Random().nextInt(15);
      if(aleatoire!=0){
        runs?.add(aleatoire);
      }
    }
  }
}