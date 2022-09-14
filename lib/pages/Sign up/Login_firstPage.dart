// ignore_for_file: prefer_const_constructors

import 'package:aga/icons/person_icons.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class FirstLoginPage extends StatelessWidget {
  const FirstLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
            Container(margin: EdgeInsets.only(top:40), child: Text('Hey there,', style: kTextH3)),
            Container(margin: EdgeInsets.only(top:5), child: Text('Create an Account', style: kTextH2Bold))
          ],) ,
          ),
        Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                height: 48,
                margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    border: InputBorder.none,
                    hintStyle: kTextMain,
                    prefixIcon: Container(margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10), child: SvgPicture.asset('assets/icons/Profile.svg', color: kGray100))
                  ),
                )
              ),
              Container(
                height: 48,
                margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    border: InputBorder.none,
                    hintStyle: kTextMain,
                    prefixIcon: Container(margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10), child: SvgPicture.asset('assets/icons/Profile.svg', color: kGray100))
                  ),
                )
              ),
              Container(

              ),
              Container(

              ),
              Container(

              ),
          ],)
        )
      ],)
      )
    );
  }
}