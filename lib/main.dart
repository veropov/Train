// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aga/bottom_navigation.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:flutter/material.dart';
import 'pages/Profile/person_profile.dart';
import 'pages/Workout Tracker/Home_workout.dart';

class AllRoutes {
  static String home = '/';
  static String workout = '/workout';
  static String photo = '/photo';
  static String profile = '/profile';
}

void main() => runApp(fitnestX());

class fitnestX extends StatefulWidget {
  const fitnestX({Key? key}) : super(key: key);

  @override
  State<fitnestX> createState() => _fitnestXState();
}

class _fitnestXState extends State<fitnestX> {
  String thisRouter = AllRoutes.home;
  bool is404 = false;

  void roadRouter(route) {
    setState(() {
      thisRouter = route;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitnestX',
      theme: ThemeData(

      ),
      home: Navigator(pages: [
        if (thisRouter == AllRoutes.home) MaterialPage(child: Home(roadRouter)),
        if (thisRouter == AllRoutes.workout) MaterialPage(child: Workout(roadRouter)),
        if (thisRouter == AllRoutes.profile) MaterialPage(child: Profile(roadRouter))
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) false;
          return true;
        },
      ),
    );
  }
}




