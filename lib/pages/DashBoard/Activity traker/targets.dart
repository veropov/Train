import 'package:aga/pages/Profile/Profile_model_change.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../transition.dart';
import 'Activity_traker.dart';
import 'Change_target/ChangeTarget_steps.dart';

  Widget stepNavigator(context) => InkWell(
    child: SvgPicture.asset('assets/icons/Edit Square_light.svg', height: 25, color: Colors.blue),
    onTap: (() => Navigator.push(context, Transition(child: ChangeTargetSteps())))
  );

  Widget stepDelete(context) => InkWell(
    child: SvgPicture.asset('assets/icons/Delete_light.svg', height: 25, color: Colors.blue),
    onTap: (() => mapTarget.remove('Step target'))
  );

  Widget stepBack(context, stepBool) => InkWell(
    child: SvgPicture.asset('assets/icons/Arrow - Left Square_light.svg', height: 25, color: Colors.blue),
    onTap: (() => stepBool = false)
  );

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

  int stepIndex = 0;

  @override
  Widget build(BuildContext context) {

  List stepIcon = [
    stepNavigator(context),
    stepDelete(context),
    stepBack(context, stepBool)
  ];

    return Container(
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
        child: stepBool ? Container(
          width: 130,
          height: 60,
          decoration: BoxDecoration(
            color: Color.fromARGB(200, 255, 255, 255),
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
                index = stepIndex;
              })
            ),
          )
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
  }
}