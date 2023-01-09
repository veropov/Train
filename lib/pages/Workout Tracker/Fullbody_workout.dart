import 'package:aga/appbar.dart';
import 'package:aga/bottom_navigation.dart';
import 'package:aga/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Profile/person_profile.dart';


class Fullbody_workout extends StatefulWidget {
  final Function? roadRouter;
  const Fullbody_workout(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<Fullbody_workout> createState() => _Fullbody_workoutState();
}

class _Fullbody_workoutState extends State<Fullbody_workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: App(
          titleApp: Text(''),
          appAction: true,
          appLeading: true,
          centerTitle: true,
          Navigator: true,
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: 340,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                        begin: Alignment.topLeft, 
                        end: Alignment.bottomRight
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 300),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 252, 252, 252), Color.fromARGB(50, 255, 255, 255)],
                        begin: Alignment(0.0, -0.75),
                        end: Alignment(0.0,-0.72)
                      )
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, right: 30, top: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            Text('Upcoming Workout', style: kTextH3Bold),
                            Container(
                              child: InkWell(
                                splashColor: Colors.blue,
                                child: Text('See more', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kGray100)),
                                onTap: (() {
                                  
                                }),
                              ),
                            )
                          ],),
                        ), 
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 50),
                          child: ScrollTimer(
                            x: 1, 
                            y: 100
                          ),
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBottomBar(widget.roadRouter),
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}