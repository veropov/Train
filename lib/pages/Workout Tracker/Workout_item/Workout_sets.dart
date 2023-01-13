import 'package:aga/constant.dart';
import 'package:aga/main.dart';
import 'package:aga/pages/DashBoard/FirstPage/Page_BMIndex.dart';
import 'package:aga/transition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  'assets/sets/set2.png',
  'assets/sets/set3.png',
  'assets/sets/set4.png',
  'assets/sets/set5.png',
  'assets/sets/set6.png',
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
  BodyMassIndex(roadRouter),
  BodyMassIndex(roadRouter),
  BodyMassIndex(roadRouter),
  BodyMassIndex(roadRouter),
  BodyMassIndex(roadRouter),
  BodyMassIndex(roadRouter),
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
            leading: Container(
              width: 50,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 243, 243, 243)
              ),
              child: Image.asset(widget.picture)
            ),
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