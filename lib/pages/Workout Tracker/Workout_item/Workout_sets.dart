import 'package:aga/constant.dart';
import 'package:aga/main.dart';
import 'package:aga/pages/DashBoard/FirstPage/Page_BMIndex.dart';
import 'package:aga/pages/Workout%20Tracker/Workout%20wdw%20to%20train/Descriptions/Descriptions_main.dart';
import 'package:aga/transition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Workout wdw to train/Descriptions/List_Description.dart';

class Sets extends StatefulWidget {
  final int set;
  final Function? roadRouter;
  const Sets(this.roadRouter, {
    required this.set,
    Key? key
  }) : super(key: key);

  @override
  State<Sets> createState() => _SetsState();
}

class _SetsState extends State<Sets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Set ${widget.set}', style: kTextMain2)),
        SizedBox(height: 15),
        for (var i=0; i<setsSubTitle_01.length; i++) SetsList(title: setsTitle_01[i], subTitle: setsSubTitle_01[i], picture: setsPicture_01[i], navigator: setNavigator[i])
      ],
    );
  }
}

List setsPicture_01 = [
  'assets/sets/set1.jpg',
  'assets/sets/set2.jpg',
  'assets/sets/set3.jpg',
  'assets/sets/set4.jpg',
  'assets/sets/set5.jpg',
  'assets/sets/set6.jpg',
];

List setsTitle_01 = [
  'Warm Up',
  'Jumping Jack',
  'Skipping',
  'Squats',
  'Arm Raises',
  'Rest and Drink',
];

Map setsSubTitle_01 = {
  0 : 5,
  1 : 12,
  2 : 15,
  3 : 20,
  4 : 53,
  5 : 2,
};

List setNavigator = [
  Description(name: name0, description: description0, subDescription: subDescription0, number: number0, title: title0, subTitle: subTitle0, picture: picture),
  Description(name: name1, description: description1, subDescription: subDescription1, number: number1, title: title1, subTitle: subTitle1, picture: picture1),
  Description(name: name2, description: description2, subDescription: subDescription2, number: number2, title: title2, subTitle: subTitle2, picture: picture2),
  Description(name: name0, description: description0, subDescription: subDescription0, number: number0, title: title0, subTitle: subTitle0, picture: picture3),
  Description(name: name1, description: description1, subDescription: subDescription1, number: number1, title: title1, subTitle: subTitle1, picture: picture4),
  Description(name: name2, description: description2, subDescription: subDescription2, number: number2, title: title2, subTitle: subTitle2, picture: picture5),
];

class SetsList extends StatefulWidget {
  final String title;
  final int subTitle;
  final String picture;
  final dynamic navigator;
  const SetsList({
    required this.title,
    required this.subTitle,
    required this.picture,
    required this.navigator,
    Key? key
  }) : super(key: key);

  @override
  State<SetsList> createState() => _SetsListState();
}

class _SetsListState extends State<SetsList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: ListTile(
            title: Text(widget.title, style: kTextMain3),
            subtitle: Text(widget.subTitle.toString(), style: kTextMain2Gray),
            leading: Image.asset(widget.picture, fit: BoxFit.contain,),
            trailing: SvgPicture.asset('assets/icons/Arrow - Right Circle_light.svg', color: kGray100)
          ),
        ),
        Container(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onPrimary: Color.fromARGB(255, 201, 201, 201),
            shadowColor: Colors.transparent
          ),
          onPressed: () {
            Navigator.push(context, Transition(child: widget.navigator));
          }, 
          child: Text('')),
        )
      ],
    );
  }
}