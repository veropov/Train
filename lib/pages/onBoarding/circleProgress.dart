import 'package:flutter/material.dart';
import 'dart:math';

class CircleProgress extends CustomPainter {

@override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = 1
      ..color = Color.fromARGB(255, 224, 224, 224)
      ..style = PaintingStyle.stroke;

      Offset center = Offset(size.width/2, size.height/2);
      double radius = 30;
      canvas.drawCircle(center, radius, circle);

  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class BMI extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
    ..color = Colors.amber
    ..style = PaintingStyle.fill;

      Offset center = Offset(size.width/2, size.height/2);
      double radius = 30;

      double angle = pi * (50/100);
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 
      pi/2, angle, false, circle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}