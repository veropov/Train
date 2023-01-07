// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:flutter/material.dart';
import 'pages/Profile/person_profile.dart';
import 'pages/Workout Tracker/Home_workout.dart';


void main() => runApp(fitnestX());

class fitnestX extends StatelessWidget {
  const fitnestX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitnestX',
      routes: {
        '/Home': (context) => Home(),
        '/Workout': (context) => Workout(),
        '/Profile': (context) => Profile()

      },
      theme: ThemeData(

      ),
      home: Home(),
    );
  }
}




