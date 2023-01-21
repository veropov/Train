import 'package:aga/appbar.dart';
import 'package:aga/bottom_navigation.dart';
import 'package:aga/constant.dart';
import 'package:aga/pages/Workout%20Tracker/Workout%20wdw%20to%20train/Descriptions/Carousel_description.dart';
import 'package:aga/pages/Workout%20Tracker/Workout%20wdw%20to%20train/Fullbody_workout.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_sets.dart';
import 'package:aga/transition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'List_Description.dart';


class Description extends StatefulWidget {
  final Function? roadRouter;

  final String name;
  final String description;
  final String subDescription;
  final String picture;
  final List number;
  final List title;
  final List subTitle;
  final int numberPage;

  const Description(this.roadRouter, {
    required this.name,
    required this.description,
    required this.subDescription,
    required this.picture,
    required this.number,
    required this.title,
    required this.subTitle,
    required this.numberPage,
    Key? key
  }) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

  bool onTap = false;

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: App(
            titleApp: const Text(''), 
            appLeading: true, 
            appAction: true, 
            centerTitle: true, 
            Navigator: true
          )
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: kBrandColor
                  ),
                  child: Image.asset(widget.picture, fit: BoxFit.cover,),
                ),
                SizedBox(height: 15),
                Text(widget.name, style: kTextH3Bold),
                SizedBox(height: 5),
                Text('Easy | 390 Calories Burn', style: kTextMainGray),
                SizedBox(height: 30),
                Text('Descriptions', style: kTextH3Bold),
                SizedBox(height: 15),
                Wrap(
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: kTextMainGray,
                        children: [
                          TextSpan(text: widget.description, ),
                          TextSpan(text: onTap ? widget.subDescription : null),
                        ]
                      )
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          onTap = true;
                        });
                      },
                      child: onTap ? Container() : Text('Read more...', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.blue)),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('How To Do It', style: kTextH3Bold),
                    Text('${widget.number.last} Steps', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kGray30))
                  ],
                ),
                SizedBox(height: 15),
                for (var i = 0; i<widget.number.length; i++) DescriptionText(widget.number[i], widget.title[i], widget.subTitle[i]),
                Text('Custom Repetitions', style: kTextH3Bold),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: widthScreen*0.5,
                      child: TimeSlider(
                        sec: secSlider,
                        min: min,
                        onPageChanged: (index, reason) {
                          setState(() {
                            kindex[widget.numberPage] = index;
                          });
                        },
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('minutes', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)))
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [const Color.fromARGB(255, 154, 195, 254), const Color.fromARGB(255, 149, 174, 254)], 
                      begin: Alignment.topLeft, 
                      end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      onPrimary: Colors.white,
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.all(5)
                    ),
                    child: Text('Save', style: kTextButton),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                        timeIndex = sec[kindex[widget.numberPage]];
                        setsSubTitle_01[widget.numberPage] = '$timeIndex sec';
                      });
                    },
                  )
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBottomBar(widget.roadRouter),
        floatingActionButton: FloatButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      )
    );
  }
}

Widget DescriptionText(int number, String title, String subTitle) => Container(
  margin: EdgeInsets.only(bottom: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(number.toString(), style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, color: shadowPurple, fontFamily: "Poppins")),
      SizedBox(width: 15),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 1.2, color: shadowPurple),
              borderRadius: BorderRadius.circular(100)
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: shadowPurple,
              borderRadius: BorderRadius.circular(100)
            ),
          ),
        ],
      ),
      SizedBox(width: 15),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: kTextH2MediumBlack),
          SizedBox(height: 5),
          SizedBox(
            width: 250,
            child: Wrap(
              children: [
                Text(subTitle, style: kTextMainGray, textAlign: TextAlign.justify),
              ],
            ),
          ),
        ],
      )
    ],
  )
);