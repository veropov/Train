// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'circleProgress.dart';
import 'dart:math' as math;

class Five extends StatelessWidget {
  const Five({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            ClipPath(
              clipper: TopCliper(),
              child: Container(
                height: heightScreen*0.53,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 146, 166, 253)], 
                      begin: Alignment.topLeft, 
                      end: Alignment.bottomRight
                  ),
                ),
              ) 
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: heightScreen*0.06, left: 60, right: 60),
              child: SvgPicture.asset('assets/images/girl_fivePage.svg', height: heightScreen*0.45)
            ),
          ],),
          Container(
            margin: EdgeInsets.only(left: 30, top: 15),
            child: Text(
              'Improve Sleep\nQuality', 
              style: kTextH1Bold,
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
              style: kTextH2Medium
            )
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: heightScreen*0.2,
              child: Container(
                //Отступы от кнопки
                margin: EdgeInsets.only(bottom: 20, right: 30),
                padding: EdgeInsets.all(5),
                child: CustomPaint(
                  foregroundPainter: CircleProgress(),
                  //Кнопка float
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      //Кнопка float
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: floatButton,
                        //Иконка
                        child: Container(
                          child: Transform.rotate(
                          angle: 90 * math.pi / 180,
                            child: Icon(Icons.navigation, color: Colors.white, size: 15)
                          )
                        ),
                      ),
                    ),
                  onTap: () {},
                )
              ),
            )
          )
        ],
      ),
    );
  }
}

class TopCliper extends CustomClipper<Path> {
 @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 440;
    path.lineTo(0 * _xScaling,145.6 * _yScaling);
    path.cubicTo(0 * _xScaling,145.6 * _yScaling,15.7 * _xScaling,103.39999999999999 * _yScaling,48.4 * _xScaling,114.39999999999999 * _yScaling,);
    path.cubicTo(94.1 * _xScaling,129.6 * _yScaling,211.2 * _xScaling,373.2 * _yScaling,334 * _xScaling,373.2 * _yScaling,);
    path.cubicTo(397 * _xScaling,373.2 * _yScaling,425 * _xScaling,330.59999999999997 * _yScaling,425 * _xScaling,330.59999999999997 * _yScaling,);
    path.cubicTo(425 * _xScaling,330.59999999999997 * _yScaling,425 * _xScaling,0 * _yScaling,425 * _xScaling,0 * _yScaling,);
    path.cubicTo(425 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,145.6 * _yScaling,0 * _xScaling,145.6 * _yScaling,);
    path.cubicTo(0 * _xScaling,145.6 * _yScaling,0 * _xScaling,145.6 * _yScaling,0 * _xScaling,145.6 * _yScaling,);
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}