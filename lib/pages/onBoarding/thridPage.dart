// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'circleProgress.dart';
import 'dart:math' as math;

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

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
              margin: EdgeInsets.only(top: heightScreen*0.08),
              child: SvgPicture.asset('assets/images/runner_2_.svg', height: heightScreen*0.45)
            ),
          ],),
          Container(
            margin: EdgeInsets.only(left: 30, top: 50),
            child: Text(
              'Get Burn', 
              style: kTextH1Bold,
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              'Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever',
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
    final double _yScaling = size.height / 420;
    path.lineTo(0 * _xScaling,254 * _yScaling);
    path.cubicTo(0 * _xScaling,254 * _yScaling,71.3 * _xScaling,130.4 * _yScaling,146.4 * _xScaling,130.4 * _yScaling,);
    path.cubicTo(221.5 * _xScaling,130.4 * _yScaling,274.1 * _xScaling,258.70000000000005 * _yScaling,349.20000000000005 * _xScaling,258.70000000000005 * _yScaling,);
    path.cubicTo(424.30000000000007 * _xScaling,258.70000000000005 * _yScaling,416.1 * _xScaling,192 * _yScaling,450 * _xScaling,192 * _yScaling,);
    path.cubicTo(450 * _xScaling,192 * _yScaling,450 * _xScaling,0 * _yScaling,450 * _xScaling,0 * _yScaling,);
    path.cubicTo(450 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,254 * _yScaling,0 * _xScaling,254 * _yScaling,);
    path.cubicTo(0 * _xScaling,254 * _yScaling,0 * _xScaling,254 * _yScaling,0 * _xScaling,254 * _yScaling,);
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}