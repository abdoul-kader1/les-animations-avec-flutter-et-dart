import 'package:flutter/material.dart';
import 'ScaleTransitionPage.dart';

class Redirection {

  redirection(BuildContext context,Widget destination){
    return Navigator.push(
        context,
        ScaleTransitionPage(child: destination)
    );
  }

}