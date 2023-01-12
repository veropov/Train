
import 'package:aga/constant.dart';
import 'package:aga/pages/DashBoard/FirstPage/Page_BMIndex.dart';
import 'package:aga/transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Schedule_check extends StatefulWidget {
  final Function? roadRouter;
  final int time;
  const Schedule_check(this.roadRouter, {
      required this.time,
      Key? key
    }) : super(key: key);

  @override
  State<Schedule_check> createState() => _Schedule_checkState();
}

class _Schedule_checkState extends State<Schedule_check> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: kBrandColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                  SvgPicture.asset('assets/icons/Calendar_light.svg', height: 22, color: kGray100),
                  SizedBox(width: 10),
                  Text('Schedule Workout', style: kTextMainGray),
                ],),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 15),
                child: Row(children: [
                  Text(widget.time.toString(), style: kTextMainGray),
                  SizedBox(width: 10),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', height: 16, color: kGray100)
                ],),
              )
            ]
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onPrimary: Color.fromARGB(255, 201, 201, 201),
              shadowColor: Colors.transparent,
            ),
            onPressed: () {
              Navigator.push(context, Transition(child: BodyMassIndex(widget.roadRouter)));
            }, 
            child: Text('')
          ),
        )
      ],
    );
  }
}