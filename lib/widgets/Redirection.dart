import 'package:flutter/material.dart';

class Redirection {

  redirection(BuildContext context,Widget destination){
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context){
              return destination;
            }
        )
    );
  }

}