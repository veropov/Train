import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import '../FirstPage/DashBoard_firstPage.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';
import 'package:aga/pages/DashBoard/Activity traker/Activity_progress.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Profile/person_profile.dart';
import 'package:aga/pages/Workout Tracker/Home_workout.dart';

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
      titleApp: Text('Activity Tracker'),
      appAction: true,
      appLeading: true,
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

    return Column(
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
                  WaterTarget(widthScreen),
                  StepTarget(widthScreen),
                  ],
                ),
              ],
            )
          ),
          ActProgress()
        ],
      );
  }
}

WaterTarget(widthScreen) => Container(
  margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
  width: widthScreen*0.35,
  height: 60,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)
  ),
);

StepTarget(widthScreen) => Container(
  margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
  width: widthScreen*0.35,
  height: 60,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)
  ),
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

