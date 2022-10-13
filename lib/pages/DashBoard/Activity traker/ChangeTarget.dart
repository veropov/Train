import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/navBar.dart';

class ChangeTarget extends StatefulWidget {
  const ChangeTarget({Key? key}) : super(key: key);

  @override
  State<ChangeTarget> createState() => _ChangeTargetState();
}

class _ChangeTargetState extends State<ChangeTarget> {
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
                color: Color.fromARGB(45, 202, 221, 255),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                children: [

              ],)
            )
        ],)
      )
    );
  }
}