import 'package:aga/constant.dart';
import 'package:aga/main.dart';
import 'package:aga/pages/DashBoard/FirstPage/Page_BMIndex.dart';
import 'package:aga/transition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sets extends StatefulWidget {
  final Function? roadRouter;
  const Sets(this.roadRouter, {Key? key}) : super(key: key);

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Exercises', style: kTextH3Bold),
              Text('3 Sets', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kGray30))
          ],),
        ),
        SizedBox(height: 15),
        for (var i=0; i<setsSubTitle_01.length; i++) SetsList(title: setsTitle_01[i], subTitle: setsSubTitle_01[i], picture: setsPicture_01[i], navigator: setNavigator[i])
      ],
    );
  }
}

List setsPicture_01 = [
  'assets/images/sets/set1.jpg',
  'assets/images/sets/set2.png',
  'assets/images/sets/set3.png',
  'assets/images/sets/set4.png',
  'assets/images/sets/set5.png',
  'assets/images/sets/set6.png',
];

List setsTitle_01 = [
  'Warm Up',
  'Jumping Jack',
  'Skipping',
  'Squats',
  'Arm Raises',
  'Rest and Drink',
];

List setsSubTitle_01 = [
  '05:00',
  '12x',
  '15x',
  '20x',
  '00:53',
  '02:00',
];

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
  final String subTitle;
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
            subtitle: Text(widget.subTitle, style: kTextMain2Gray),
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