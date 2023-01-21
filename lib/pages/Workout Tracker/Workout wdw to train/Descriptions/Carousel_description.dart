import 'package:aga/constant.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_sets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import 'List_Description.dart';

class TimeSlider extends StatefulWidget {
  final List sec;
  final List min;
  final Function(int index, CarouselPageChangedReason reason) onPageChanged;

  const TimeSlider({
    required this.onPageChanged,
    required this.sec,
    required this.min,
    Key? key
  }) : super(key: key);

  @override
  State<TimeSlider> createState() => _TimeSliderState();
}

class _TimeSliderState extends State<TimeSlider> {
  @override
  Widget build(BuildContext context) {

    return CarouselSlider.builder(
      itemCount: sec.length, 
      itemBuilder: ((context, index, realIndex) => Row(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/images/calories.svg', height: 16),
              if (widget.min[index] <=3) Text('50 Calories Burn', style: kTextMainBranch)
              else if (widget.min[index] <=5) Text('150 Calories Burn', style: kTextMainBranch)
            ],
          ),
          SizedBox(width: 15),
          Row(
            children: [
              Text('${widget.min[index]}', style: TextStyle(fontSize: 28, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
              SizedBox(width: 5),
              Text(':', style: kTextTitle),
              SizedBox(width: 5),
              Text('${widget.sec[index]}', style: TextStyle(fontSize: 28, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray60)),
            ],
          ),
        ],
      )), 
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        viewportFraction: 0.35,
        enableInfiniteScroll: false,
        initialPage: 0,
        height: 150,
        onPageChanged: widget.onPageChanged,
      )
    );
  }
}

List kindex = [
  0,
  0,
  0,
  0,
  0,
  0,
];

List numKindex = [
  0,
  1,
  2,
  3,
  4,
  5,
];


var timeIndex = sec[0];

  List <int> sec = [ for (var i = 0; i<=30; i++) 
    i*10
  ];

  List secSlider = [ for (var i = 0; i<=30; i++)  
    sec[i]%60
  ];

  List min = [ for (var i = 0; i<=30; i++) 
    (sec[i]/60).toInt()
  ];





