import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/navBar.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_sleep.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_steps.dart';
import 'package:aga/pages/DashBoard/FirstPage/DashBoard_firstPage.dart';
import 'package:aga/pages/Profile/person_profile.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Workout Tracker/Home_workout.dart';

class ListTarget extends StatefulWidget {
  const ListTarget({Key? key}) : super(key: key);

  @override
  State<ListTarget> createState() => _ListTargetState();
}

class _ListTargetState extends State<ListTarget> {
  @override
  Widget build(BuildContext context) {
    return MainApp(
      Ind: 0, 
      titleApp: Text('Add Target'),
      appAction: true,
      appLeading: true,
      currentInd: ListTargets(), 
      currentInd2: Workout(), 
      currentInd3: Home(), 
      currentInd4: Profile()
    );
  }
}

class ListTargets extends StatefulWidget {
  const ListTargets({Key? key}) : super(key: key);

  @override
  State<ListTargets> createState() => _ListTargetsState();
}

class _ListTargetsState extends State<ListTargets> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          leading: SvgPicture.asset('assets/images/target_glass.svg', height: 35),
          trailing: SvgPicture.asset(''),
          tileColor: Color.fromARGB(45, 202, 221, 255),
          title: Text('Water Intake', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
          onTap: () {
            
          },
        ),
        SizedBox(height: 5),
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          leading: SvgPicture.asset('assets/images/target_boots.svg', height: 35),
          trailing: SvgPicture.asset(''),
          tileColor: Color.fromARGB(45, 202, 221, 255),
          title: Text('Foot Steps', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
          onTap: () {
            Navigator.push(context, Transition(child: ChangeTargetSteps()));
          },
        ),
        SizedBox(height: 5),
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          leading: SvgPicture.asset('assets/images/target_calories.svg', height: 38),
          trailing: SvgPicture.asset(''),
          tileColor: Color.fromARGB(45, 202, 221, 255),
          title: Text('Burn calories', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
          onTap: () {},
        ),
        SizedBox(height: 5),     
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          leading: SvgPicture.asset('assets/images/target_sleep.svg', height: 35),
          trailing: SvgPicture.asset(''),
          tileColor: Color.fromARGB(45, 202, 221, 255),
          title: Text('Sleep', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
          onTap: () {
            Navigator.push(context, Transition(child: ChangeTarget()));
          }
        )
      ]
    );
  }
}