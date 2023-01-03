import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';
import 'package:aga/pages/DashBoard/Activity traker/Activity_progress.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Profile/person_profile.dart';
import 'package:aga/pages/Workout Tracker/Home_workout.dart';

import 'package:aga/pages/DashBoard/Activity traker/Change_target/ChangeTarget_steps.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {

  @override
  Widget build(BuildContext context) {
    return MainApp(
      Ind: 0, 
      titleApp: Text('Activity Tracker', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
      appAction: true,
      appLeading: true,
      centerTitle: true,
      currentInd: Tracker(), 
      currentInd2: Workout(), 
      currentInd3: Home(), 
      currentInd4: Profile()
    );
  }
}

class Tracker extends StatefulWidget {
  const Tracker({Key? key}) : super(key: key);

  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  @override
  Widget build(BuildContext context) {

    final widthScreen = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color.fromARGB(121, 218, 235, 255), Color.fromARGB(108, 206, 217, 255)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight
              ),
              borderRadius: BorderRadius.circular(22)
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Today Target', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins")),
                      SizedBox(width: 20),
                      InkWell(
                        borderRadius: BorderRadius.circular(8),
                        highlightColor: Color.fromARGB(255, 28, 89, 255),
                        onTap: () {
                        Navigator.push(context, Transition(child: ListTarget()));
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromARGB(121, 122, 177, 255), Color.fromARGB(122, 0, 60, 255)], 
                              begin: Alignment.topLeft, 
                              end: Alignment.bottomRight
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Container(
                          padding: EdgeInsets.all(9),
                          child: SvgPicture.asset('assets/images/Plus.svg', color: Colors.white)
                        )
                      )
                    )
                  ],),
                  SizedBox(height: 15),
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                    for (var i=0; i<TargetWidget.length; i++) TargetWidget[i]
                    ],
                  ),
                ],
              )
            ),
            ActProgress()
          ],
        ),
    );
  }
}

List TargetWidget = [
  StepTarget(),
  WaterTarget(),
  StepTarget(),
  WaterTarget(),
];

StepTarget() => Container(
  margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
  width: 130,
  height: 60,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset('assets/images/target_boots.svg', height: 30),
      SizedBox(width: 12),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${textIndex.toString()}', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 126, 145, 253), fontFamily: "Poppins")),
          Text('Foot Steps', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins"))
        ],
      )
  ],)
);

WaterTarget() => Container(
  margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
  width: 130,
  height: 60,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset('assets/images/target_glass.svg', height: 30),
      SizedBox(width: 12),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${textIndex.toString()}', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 126, 145, 253), fontFamily: "Poppins")),
          Text('Water Intake', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins"))
        ],
      )
  ],)
);

Widget ActProgress() => Container(
  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Activity Progress', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600, color: kBlack, fontFamily: "Poppins")),
          Container(
            height: 30,
            width: 76,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight
              ),
              borderRadius: BorderRadius.circular(50)
            ),
          ),
        ],
      ),
      SizedBox(height: 15),
      ActivityProgress()
    ],
  )
);

