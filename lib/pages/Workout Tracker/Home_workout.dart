import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:aga/constant.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Profile/person_profile.dart';
import 'package:aga/transition.dart';
import 'package:aga/pages/Profile/person_profile.dart';
import 'package:aga/pages/Profile/Profile_model_change.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Workout extends StatefulWidget {
  const Workout({Key? key}) : super(key: key);

  @override
  State<Workout> createState() => _WorkoutState();
}

bool workoutPage = true;

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: currentIndex == 1 ? Size.fromHeight(60) : Size.fromHeight(0),
        child: currentIndex == 1 ? App(titleApp: Text('Workout Tracker', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))), appAction: true, appLeading: false, centerTitle: false,) : Container()
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
                        colors: [Colors.white, Color.fromARGB(50, 255, 255, 255)],
                        begin: Alignment(0.0, -0.5),
                        end: Alignment(0.0,-0.2)
                      )
                    ),
                    child: Column(
                      children: [
                        DayliWorkout(context),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
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
                                  setState(() {
                                    workoutPage = !workoutPage;
                                  });
                                }),
                              ),
                            )
                          ],),
                        ), 
                        UpcomingWorout(),
                        workoutPage ? Container(height: 30) : UpcomingWorout(),
                        Text('da')
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

Widget WorkTracker() => Container(
  height: 300,
  width: double.infinity,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
      begin: Alignment.topLeft, 
      end: Alignment.bottomRight
    )
  ),
);

Widget DayliWorkout(context) => Container(
  margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
  height: 60,
  width: double.infinity,
  decoration: BoxDecoration(
    gradient: const LinearGradient(
      colors: [Color.fromARGB(255, 229, 241, 255), const Color.fromARGB(255, 216, 226, 255)], 
      begin: Alignment.topLeft, 
      end: Alignment.bottomRight
    ),
    borderRadius: BorderRadius.circular(16)
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text('Daily Workout Schedule', style: const TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
      Container(
        width: 74,
        height: 32,
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
          child: const Text('Check', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
          onPressed: () {
            // Navigator.push(context, Transition(child: Activity()));
          },
        )
      ),
  ],)
);


class UpcomingWorout extends StatefulWidget {
  const UpcomingWorout({Key? key}) : super(key: key);

  @override
  State<UpcomingWorout> createState() => _UpcomingWoroutState();
}

class _UpcomingWoroutState extends State<UpcomingWorout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(height: 15),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
            const BoxShadow(
              color: Color.fromARGB(10, 15, 5, 5),
              blurRadius: 30,
            )] 
          ),
          child: ListTile(
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Fullbody Workout', style: kTextMain2),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('Today, 03:00pm', style: kTextMainBranch),
            ),
            leading: Stack(children: [
              Container(
                width: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                    begin: Alignment.topLeft, 
                    end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(100)
                ),
              ),
              SvgPicture.asset('assets/images/Upcoming_vector.svg')
            ]),
            trailing: SwitchButton(width: 44, heiht: 22),
            onTap: () {
              
            },
          ),
        ),
        SizedBox(height: 15),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
            const BoxShadow(
              color: Color.fromARGB(10, 15, 5, 5),
              blurRadius: 30,
            )] 
          ),
          child: ListTile(
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Fullbody Workout', style: kTextMain2),
            subtitle: Padding(
              padding:EdgeInsets.only(top: 5),
              child: Text('Today, 03:00pm', style: kTextMainBranch),
            ),
            leading: Stack(children: [
              Container(
                width: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [Color.fromARGB(90, 197, 139, 242), Color.fromARGB(90, 238, 164, 206)],
                    begin: Alignment.topLeft, 
                    end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(100)
                ),
              ),
              SvgPicture.asset('assets/images/Upcoming_vector_2.svg')
            ]),
            trailing: SwitchButton(width: 44, heiht: 22),
            onTap: () {
              
            },
          ),
        )
      ]),
    );
  }
}
