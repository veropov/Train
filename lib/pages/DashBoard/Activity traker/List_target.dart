import 'package:aga/appbar.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Activity_traker.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_calories.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_sleep.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_steps.dart';
import 'package:aga/pages/Profile/person_profile.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Workout Tracker/Home_workout.dart';
import 'Change_target/ChangeTarget_water.dart';

class ListTargets extends StatefulWidget {
  final Function? roadRouter;
  const ListTargets(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<ListTargets> createState() => _ListTargetsState();
}

class _ListTargetsState extends State<ListTargets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: App(titleApp: Text('Add Target', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
          appAction: true,
          appLeading: true,
          centerTitle: true,
        ),
      ),
      body: ListView(
        children: [
          mapTarget.containsKey('Water target') ? Container() : ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_glass.svg', height: 35),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Water Intake', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {
              Navigator.push(context, Transition(child: ChangeTargetWater(widget.roadRouter)));
            },
          ),
          SizedBox(height: 5),
          mapTarget.containsKey('Step target') ? Container() : ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_boots.svg', height: 35),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Foot Steps', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {
              Navigator.push(context, Transition(child: ChangeTargetSteps(widget.roadRouter)));
            },
          ),
          SizedBox(height: 5),
          mapTarget.containsKey('Calories target') ? Container() : ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_calories.svg', height: 38),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Burn calories', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {
              Navigator.push(context, Transition(child: ChangeTargetCalories(widget.roadRouter)));
            },
          ),
          SizedBox(height: 5),     
          mapTarget.containsKey('Sleep target') ? Container() : ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_sleep.svg', height: 35),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Sleep time', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {
              Navigator.push(context, Transition(child: ChangeTargetSleep(widget.roadRouter)));
            }
          )
        ]
      ),
    );
  }
}