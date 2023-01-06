import 'package:aga/pages/Profile/Profile_model_change.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../transition.dart';
import 'Activity_traker.dart';
import 'Change_target/ChangeTarget_steps.dart';

class StepTarget extends StatefulWidget {
  final int bring;
  const StepTarget({
    required this.bring,
    Key? key
  }) : super(key: key);

  @override
  State<StepTarget> createState() => _StepTargetState();
}

class _StepTargetState extends State<StepTarget> {

  bool stepBool = false;
  bool delete = false;
  int stepIndex = 1;
  Color bar = Color.fromARGB(199, 255, 255, 255);

  @override
  Widget build(BuildContext context) {

  List stepIcon = [
    SvgPicture.asset('assets/icons/Delete_light.svg', height: 25, color: Colors.blue),
    SvgPicture.asset('assets/icons/Arrow - Left Square_light.svg', height: 25, color: Colors.blue),
    SvgPicture.asset('assets/icons/Edit Square_light.svg', height: 25, color: Colors.blue),
  ];

  Widget st() => Container(
    margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
    child: InkWell(
      borderRadius: BorderRadius.circular(8),
      highlightColor: const Color.fromARGB(255, 234, 236, 255),
      splashColor: const Color.fromARGB(255, 118, 103, 255),
      onTap: () {
        setState(() {
          stepBool = true;
        });
      },
      child: stepBool ? InkWell(
        onTap: () {
          setState(() {
            if (stepIndex == 0) {
              delete = true;
              mapTarget.remove('Step target');
            } 
            else if (stepIndex == 1) stepBool = false;
            else if (stepIndex == 2) Navigator.push(context, Transition(child: ChangeTargetSteps()));
          });
        },
        child: Container(
          width: 130,
          height: 60,
          decoration: BoxDecoration(
            color: bar,
            borderRadius: BorderRadius.circular(8)
          ),
          child: CarouselSlider.builder(
            itemCount: stepIcon.length, 
            itemBuilder: ((context, index, realIndex) => stepIcon[index]
            ),
            options: CarouselOptions(
              height: 25,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: false,
              initialPage: 1,
              viewportFraction: 0.38,
              autoPlayAnimationDuration: Duration(milliseconds: 3000),
              autoPlayCurve: Curves.ease,
              onPageChanged: (index, reason) => setState(() {
                stepIndex = index;
              })
            ),
          )
        ),
      ) :
      Container(
        width: 130,
        height: 60,
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 255, 255, 255),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/target_boots.svg', height: 30),
              SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.bring.toString(), style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 126, 145, 253), fontFamily: "Poppins")),
                  Text('Foot Steps', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins"))
                ],
              )
          ],),
        )
      )
    ),
  );

    return delete ? Container() : st();
  }
}