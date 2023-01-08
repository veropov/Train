// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aga/bottom_navigation.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_calories.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_sleep.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_steps.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_water.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/DashBoard/FirstPage/Page_BMIndex.dart';
import 'package:aga/pages/Workout%20Tracker/Fullbody_workout.dart';
import 'package:flutter/material.dart';
import 'pages/DashBoard/Activity traker/Activity_traker.dart';
import 'pages/DashBoard/Activity traker/List_target.dart';
import 'pages/Profile/person_profile.dart';
import 'pages/Workout Tracker/Home_workout.dart';

class AllRoutes {
  static String home = '/';
  static String workout = '/workout';
  static String photo = '/photo';
  static String profile = '/profile';
  static String BodyMassIndex = '/bms';
  static String todayTarget = '/t_target';
  static String changeTarget = '/ch_target';
  static String fullbodyWorkout = '/fb_workout';

  static String changeStep = '/ch_step';
  static String changeWater = '/ch_water';
  static String changeCalories = '/ch_cal';
  static String changeSleep = '/ch_sleep';
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
      theme: ThemeData(),
      home: Navigator(pages: [
        if (thisRouter == AllRoutes.home) MaterialPage(child: Home(roadRouter)),
        if (thisRouter == AllRoutes.workout) MaterialPage(child: Workout(roadRouter)),
        if (thisRouter == AllRoutes.profile) MaterialPage(child: Profile(roadRouter)),
        if (thisRouter == AllRoutes.BodyMassIndex) MaterialPage(child: BodyMassIndex(roadRouter)),
        if (thisRouter == AllRoutes.todayTarget) MaterialPage(child: Tracker(roadRouter)),
        if (thisRouter == AllRoutes.fullbodyWorkout) MaterialPage(child: Fullbody_workout(roadRouter)),
        if (thisRouter == AllRoutes.changeTarget) MaterialPage(child: ListTargets(roadRouter)),

        if (thisRouter == AllRoutes.changeStep) MaterialPage(child: ChangeTargetSteps(roadRouter)),
        if (thisRouter == AllRoutes.changeWater) MaterialPage(child: ChangeTargetWater(roadRouter)),
        if (thisRouter == AllRoutes.changeCalories) MaterialPage(child: ChangeTargetCalories(roadRouter)),
        if (thisRouter == AllRoutes.changeSleep) MaterialPage(child: ChangeTargetSleep(roadRouter)),
      ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) false;
          return true;
        },
      ),
    );
  }
}




