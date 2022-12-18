import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:aga/constant.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Profile/person_profile.dart';

class HomeWorkout extends StatefulWidget {
  const HomeWorkout({Key? key}) : super(key: key);

  @override
  State<HomeWorkout> createState() => _HomeWorkoutState();
}

class _HomeWorkoutState extends State<HomeWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: currentIndex == 0 ? Size.fromHeight(60) : Size.fromHeight(0),
        child: currentIndex == 0 ? App(titleApp: Text('Workout Tracker')) : Container()
      )
    );
  }
}