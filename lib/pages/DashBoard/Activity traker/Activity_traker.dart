import 'package:aga/appbar.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_water.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/targets.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';
import 'package:aga/pages/DashBoard/Activity traker/Activity_progress.dart';
import 'package:aga/pages/DashBoard/Activity traker/Change_target/ChangeTarget_steps.dart';

import '../../../bottom_navigation.dart';

class Tracker extends StatefulWidget {
  const Tracker({Key? key}) : super(key: key);

  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: App(
          titleApp: Text('Activity Tracker', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
          appAction: true,
          appLeading: true,
          centerTitle: true,
        )
      ),
      body: SingleChildScrollView(
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
                          Navigator.push(context, Transition(child: ListTargets()));
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
                      alignment: WrapAlignment.center,
                      children: [
                        for (var item in mapTarget.entries)
                        item.value
                      ]
                    ),
                  ],
                )
              ),
              ActProgress()
            ],
          ),
      ),
      bottomNavigationBar: NavBottomBar()
    );
  }
}


Map <String, Widget> mapTarget = {
  'Water target' : WaterTarget(textWaterIndex),
  'Step target' : StepTarget(bring: textIndex),
};

//Список виджетов в Today Target//Список виджетов в Today Target
//Список виджетов в Today Target//Список виджетов в Today Target
//Список виджетов в Today Target//Список виджетов в Today Target

WaterTarget(bring) => Container(
  margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
  width: 130,
  height: 60,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)
  ),
  child: Container(
    margin: EdgeInsets.only(left: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/target_glass.svg', height: 30),
        SizedBox(width: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bring.toString() + 'L', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 126, 145, 253), fontFamily: "Poppins")),
            Text('Water Intake', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins"))
          ],
        )
    ],),
  )
);

Widget SleepTarget(bring) => Container(
  margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
  width: 130,
  height: 60,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)
  ),
  child: Container(
    margin: EdgeInsets.only(left: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/target_sleep.svg', height: 30),
        SizedBox(width: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bring, style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 126, 145, 253), fontFamily: "Poppins")),
            Text('Sleep time', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins"))
          ],
        )
    ],),
  )
);

Widget CaloriesTarget(bring) => Container(
  margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
  width: 130,
  height: 60,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8)
  ),
  child: Container(
    margin: EdgeInsets.only(left: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/target_calories.svg', height: 30),
        SizedBox(width: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bring.toString(), style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 126, 145, 253), fontFamily: "Poppins")),
            Text('Burn calories', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins"))
          ],
        )
    ],),
  )
);


//Прогресс бар активности//Прогресс бар активности
//Прогресс бар активности//Прогресс бар активности
//Прогресс бар активности//Прогресс бар активности

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

