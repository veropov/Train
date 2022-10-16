import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/navBar.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ChangeTarget extends StatefulWidget {
  const ChangeTarget({Key? key}) : super(key: key);

  @override
  State<ChangeTarget> createState() => _ChangeTargetState();
}

class _ChangeTargetState extends State<ChangeTarget> {

  final targets = [
    'Mo',
    'Tu',
    'We',
    'Th',
    'Fr',
    'Sa',
    'Su'
  ];

  final _targetBool = [
    false, 
    false, 
    false, 
    false, 
    false, 
    false, 
    false
  ];


  @override
  Widget build(BuildContext context) {
  final heightScreen = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: heightScreen*0.45,
              color: Colors.transparent
            ),
            Container(
              width: double.infinity,
              height: heightScreen * 0.4,
              decoration: BoxDecoration(
                color: Color.fromARGB(44, 216, 230, 255),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      children: [
                        _targetBool.every((element) => element == true) ? Text('Every day', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: kBlack)) : Text('Every '),
                        for (var i=0; i<7; i++)
                          _targetBool.every((element) => element == true) ? SizedBox(height: 20) :
                          _targetBool[i] ? 
                          Text(targets[i] + ', ', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: kBlack)) : SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset('')
                        )
                    ],),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (var i=0; i<7; i++) InkWell(
                          onTap: () {
                            setState(() {
                            _targetBool[i] = !_targetBool[i];
                            });
                          },
                          highlightColor: Color.fromARGB(255, 128, 126, 255),
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            alignment: Alignment.center,
                            width: 38,
                            height: 38,
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(), 
                              color: _targetBool[i] ? Color.fromARGB(155, 163, 169, 255) : Color.fromARGB(155, 214, 214, 241)
                            ),
                              child: Text(targets[i], style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins"))
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    SwitchButton()
                ],),
              )
            )
        ],)
      )
    );
  }
}