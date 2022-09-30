import 'package:flutter/material.dart';

class Transition extends PageRouteBuilder {
final Widget child;

Transition( {
  required this.child,
  
}) : super(
    reverseTransitionDuration: Duration(milliseconds: 300),
    transitionDuration: Duration(milliseconds: 300),
    barrierColor: Color.fromARGB(70, 191, 212, 250),
    transitionsBuilder: (context, animation, secondaryAnimation, Widget child) {

    animation = CurvedAnimation(curve: Curves.ease, parent: animation);

    return SlideTransition(
      position: Tween(
        begin: Offset(1, 0),
        end: Offset.zero
      ).animate(animation),
      child: child,
    );
    },

    pageBuilder:(context, animation, secondaryAnimation) {
      return child;
    }
  );
}