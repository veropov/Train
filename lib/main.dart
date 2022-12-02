// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:aga/icons/person_icons.dart';
import 'package:aga/constant.dart';
import 'package:aga/pages/onBoarding/firstPage.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';

import 'package:aga/pages/DashBoard/FirstPage/DashBoard_firstPage.dart';


void main() => runApp(fitnestX());

class fitnestX extends StatelessWidget {
  const fitnestX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitnestX',
      theme: ThemeData(

      ),
        home: MainBoards(),
    );
  }
}




