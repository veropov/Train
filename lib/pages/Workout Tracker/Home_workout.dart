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

// class HomeWorkout extends StatefulWidget {
//   const HomeWorkout({Key? key}) : super(key: key);

//   @override
//   State<HomeWorkout> createState() => _HomeWorkoutState();
// }

// class _HomeWorkoutState extends State<HomeWorkout> {
//   @override
//   Widget build(BuildContext context) {
//     return MainApp(
//       Ind: 1, 
//       titleApp: Text('Workout Tracker'), 
//       currentInd: Home(), 
//       currentInd2: Workout(), 
//       currentInd3: Home(), 
//       currentInd4: Profile()
//     );
//   }
// }

class Workout extends StatefulWidget {
  const Workout({Key? key}) : super(key: key);

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: currentIndex == 1 ? Size.fromHeight(60) : Size.fromHeight(0),
        child: currentIndex == 1 ? App(titleApp: Text('Workout Tracker'), appAction: true, appLeading: false, centerTitle: false,) : Container()
      ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                      begin: Alignment.topLeft, 
                      end: Alignment.bottomRight
                    )
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 300),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                      color: Colors.white
                    ),
                    child: DayliWorkout(context)
                  ),
                )
              ],
            )
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