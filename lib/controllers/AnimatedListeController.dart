import 'package:flutter/material.dart';

class AnimatedListController extends StatelessWidget{

  List<String>lesFruits;
  final GlobalKey<AnimatedListState> laKey = GlobalKey<AnimatedListState>();

  AnimatedListController({super.key,required this.lesFruits});


  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              onSubmitted: (valeur){
                ajouterElement(controller.text);
              },
              decoration: InputDecoration(
                  labelText: "entrez un fruit",
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.9,
            child: AnimatedList(
              key: laKey,
              itemBuilder: (context, index, animation) {
                return slideTile(lesFruits[index],index,animation);
              },
              initialItemCount: lesFruits.length,
            ),
          )
        ],
      ),
    );
  }
  Widget slideTile(String name,int index, Animation animation){
    int nouveauIndex = index+1;
    return SlideTransition(
      position: animation.drive(Tween<Offset>(begin: Offset(1,0),end: Offset(0,0))),
      child: ListTile(
        title: Text(name),
        leading: Text(nouveauIndex.toString()),
        trailing: IconButton(
          onPressed: () {
            supprimerElement(index);
          },
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
  //ajout d'un élément dans le tableau
  ajouterElement(String donnee){
    int index = lesFruits.length;
    lesFruits.insert(index, donnee);
    laKey.currentState?.insertItem(index);
  }
  //Supprimer un élément dans le tableau et la mise a jour de la liste animée
  supprimerElement(int index){
    String name = lesFruits[index];
    lesFruits.removeAt(index);
    laKey.currentState?.removeItem(index, (context, animation){
      return slideTile(name, index, animation);
    });

  }


}