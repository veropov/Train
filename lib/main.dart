// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:aga/icons/person_icons.dart';
import 'package:aga/constant.dart';

//Onboarding
import 'package:aga/pages/onBoarding/firstPage.dart';
import 'package:aga/pages/onBoarding/secondPage.dart';
import 'package:aga/pages/onBoarding/thridPage.dart';
import 'package:aga/pages/onBoarding/fourthPage.dart';
import 'package:aga/pages/onBoarding/fivePage.dart';

//Login
import 'package:aga/pages/Sign up/Login_firstPage.dart';
import 'package:aga/pages/Sign up/Login_secondPage.dart';
import 'package:aga/pages/Sign up/Login_thirdPage.dart';
import 'package:aga/pages/Sign up/Login_enter.dart';
import 'package:aga/pages/Sign up/Login_welcome.dart';
void main() => runApp(fitnestX());

class fitnestX extends StatelessWidget {
  const fitnestX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitnestX',
      theme: ThemeData(),
        home: LoginWelcome(),
    );
  }
}




