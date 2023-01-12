import 'package:aga/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Difficulity_check extends StatefulWidget {
  final String hard;
  final Function? roadRouter;
  const Difficulity_check(this.roadRouter, {
    required this.hard,
    Key? key
  }) : super(key: key);

  @override
  State<Difficulity_check> createState() => _Difficulity_checkState();
}

class _Difficulity_checkState extends State<Difficulity_check> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: kSecondColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                  SvgPicture.asset('assets/icons/Swap.svg', height: 16, color: kGray100),
                  SizedBox(width: 10),
                  Text('Difficulity', style: kTextMainGray),
                ],),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 15),
                child: Row(children: [
                  Text(widget.hard, style: kTextMainGray),
                  SizedBox(width: 10),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', height: 16, color: kGray100)
                ],),
              )
            ]
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onPrimary: Color.fromARGB(255, 201, 201, 201),
              shadowColor: Colors.transparent,
            ),
            onPressed: () {

            }, 
            child: Text('')
          ),
        )
      ],
    );
  }
}