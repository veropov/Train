// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'circleProgress.dart';
import 'dart:math' as math;
import 'package:aga/transition.dart';
import 'package:aga/pages/onBoarding/fivePage.dart';

class Fourth extends StatelessWidget {
  const Fourth({Key? key}) : super(key: key);

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
                margin: EdgeInsets.only(left: heightScreen*0.05, top: heightScreen*0.08),
                child: SvgPicture.asset('assets/images/man_fourthPage.svg')
              ) 
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 50),
            child: Text(
              'Eat Well', 
              style: kTextH1Bold,
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              'Lets start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
              style: kTextH2Medium
            )
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: heightScreen*0.2,
              child: Container(
                //Отступы от кнопки
                margin: EdgeInsets.only(bottom: 15, right: 25),
                padding: EdgeInsets.all(5),
                child: CustomPaint(
                  foregroundPainter: CircleProgress(),
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
                          alignment: Alignment.center,
                          child: Transform.rotate(
                          angle: 90 * math.pi / 1,
                            child: SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kWhite, width: 20)
                          )
                        ),
                      ),
                    ),
                  onTap: () {
                    Navigator.push(context, Transition(child: Five())
                    );
                  },
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
    path.lineTo(0 * _xScaling,210.1 * _yScaling);
    path.cubicTo(0 * _xScaling,210.1 * _yScaling,25.4 * _xScaling,213.6 * _yScaling,51.1 * _xScaling,295.9 * _yScaling,);
    path.cubicTo(76.8 * _xScaling,378.2 * _yScaling,148.2 * _xScaling,439 * _yScaling,241.4 * _xScaling,439 * _yScaling,);
    path.cubicTo(334.5 * _xScaling,439 * _yScaling,425 * _xScaling,324.5 * _yScaling,425 * _xScaling,250.1 * _yScaling,);
    path.cubicTo(425 * _xScaling,250.1 * _yScaling,425 * _xScaling,0 * _yScaling,425 * _xScaling,0 * _yScaling,);
    path.cubicTo(425 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,210.1 * _yScaling,0 * _xScaling,210.1 * _yScaling,);
    path.cubicTo(0 * _xScaling,210.1 * _yScaling,0 * _xScaling,210.1 * _yScaling,0 * _xScaling,210.1 * _yScaling,);
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}