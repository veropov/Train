import 'package:aga/appbar.dart';
import 'package:aga/bottom_navigation.dart';
import 'package:aga/constant.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_difficulity.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_needs_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Profile/person_profile.dart';

import 'Workout_item/Workout_schedule.dart';


class Fullbody_workout extends StatefulWidget {
  final Function? roadRouter;
  const Fullbody_workout(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<Fullbody_workout> createState() => _Fullbody_workoutState();
}

class _Fullbody_workoutState extends State<Fullbody_workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: App(
          titleApp: Text(''),
          appAction: true,
          appLeading: true,
          centerTitle: true,
          Navigator: true,
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: 340,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: kBrandColor
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 300),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                      color: Color.fromARGB(255, 255, 255, 255)
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, right: 30, top: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Upcoming Workout', style: kTextH3Bold),
                                SizedBox(height: 5),
                                Text('11 Exercises | 32mins | 320 Calories Burn', style: kTextMainGray)
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 34,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [const BoxShadow(
                                      color: Color.fromARGB(12, 15, 8, 8),
                                      blurRadius: 10,
                                    )] 
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(6),
                                    child: SvgPicture.asset('assets/images/Workout_Heart.svg', height: 16))
                                ),
                                SizedBox(
                                  width: 34,
                                  height: 34,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      onPrimary: Color.fromARGB(50, 255, 79, 79),
                                      shadowColor: Colors.transparent
                                    ),
                                    onPressed: () {}, 
                                    child: Text('')),
                                )
                              ],
                            ),
                          ],),
                        ), 
                        SizedBox(height: 20),
                        Schedule_check(time: 10),
                        SizedBox(height: 15),
                        Difficulity_check(hard: 'Beginner'),
                        SizedBox(height: 30),
                        NeedItem()
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBottomBar(widget.roadRouter),
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}