import 'package:flutter/material.dart';
import 'package:aga/icons/person_icons.dart';
import 'package:aga/constant.dart';


class SecondPageSVG extends StatelessWidget {
  const SecondPageSVG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [ClipPath(
        clipper: TopCliper(),
        child: Container(decoration: kBrandColor)
        )
      ],),
    );
  }
}

class TopCliper extends CustomClipper<Path> {
   @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 420;
    final double _yScaling = size.height / 896;
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