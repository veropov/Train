// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aga/icons/person_icons.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class Sec extends StatelessWidget {
  const Sec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              child: Container(
                margin: EdgeInsets.only(top: heightScreen*0.08),
                child: SvgPicture.asset('assets/images/Group.svg')
              ) 
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 50),
            child: Text(
              'Track Your Goal', 
              style: kTextH1Bold,
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              'Dont worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
              style: kTextH2Medium
            )
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: heightScreen*0.2,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.only(bottom: 20, right: 30),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Color.fromARGB(255, 201, 201, 201)),
                  borderRadius: BorderRadius.all(Radius.circular(80))),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: floatButton,
                  child: Container(
                    child: Transform.rotate(
                    angle: 90 * math.pi / 180,
                      child: Icon(Icons.navigation, color: Colors.white, size: 15))
                  ),
                )
              ),
              onTap: () {},
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
    final double _yScaling = size.height / 455;
    path.lineTo(425 * _xScaling,274 * _yScaling);
    path.cubicTo(425 * _xScaling,274 * _yScaling,343.3 * _xScaling,437 * _yScaling,216.6 * _xScaling,442.6 * _yScaling,);
    path.cubicTo(89.8 * _xScaling,448.2 * _yScaling,0 * _xScaling,387.6 * _yScaling,0 * _xScaling,387.6 * _yScaling,);
    path.cubicTo(0 * _xScaling,387.6 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,425 * _xScaling,0 * _yScaling,425 * _xScaling,0 * _yScaling,);
    path.cubicTo(425 * _xScaling,0 * _yScaling,425 * _xScaling,274 * _yScaling,425 * _xScaling,274 * _yScaling,);
    path.cubicTo(425 * _xScaling,274 * _yScaling,425 * _xScaling,274 * _yScaling,425 * _xScaling,274 * _yScaling,);
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}