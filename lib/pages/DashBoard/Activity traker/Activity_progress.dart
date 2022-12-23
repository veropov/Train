import 'package:aga/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:aga/pages/DashBoard/Activity traker/Change_target/ChangeTarget_steps.dart';

class ActivityProgress extends StatefulWidget {
  const ActivityProgress({Key? key}) : super(key: key);

  @override
  State<ActivityProgress> createState() => _ActivityProgressState();
}

List dateWeek = [
DateTime.monday,
DateTime.tuesday,
DateTime.wednesday,
DateTime.thursday,
DateTime.friday,
DateTime.saturday,
DateTime.sunday
];

ActProgress() {
  var a = (500 + 100 + 200);
  var b = a*0.1;
  return b;
}

class _ActivityProgressState extends State<ActivityProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (var i=0; i<7; i++) Column(
              children: [
                SizedBox(height: 20),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    width: 22,
                    height: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kBorder
                      ),
                    ),
                    Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    width: 22,
                    height: dateWeek[i] == bla() ? ActProgress() : 0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                      begin: Alignment.topLeft, 
                      end: Alignment.bottomRight
                      )
                    )
                  ),
                ],
              ),
            SizedBox(height: 7),
            Text(days[i], style: kTextMain),
            SizedBox(height: 20)
          ],),
          Text(bla().toString()),
        ],),
      ),
    );
  }
}

var d = DateTime.now();

bla() => d.weekday;