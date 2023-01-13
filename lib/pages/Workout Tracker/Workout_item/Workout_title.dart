import 'package:aga/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleWorkout extends StatefulWidget {
  final String title;
  final String subTitle;
  const TitleWorkout({
    required this.title,
    required this.subTitle,
    Key? key
  }) : super(key: key);

  @override
  State<TitleWorkout> createState() => _TitleWorkoutState();
}

class _TitleWorkoutState extends State<TitleWorkout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: kTextH3Bold),
            const SizedBox(height: 5),
            Text(widget.subTitle, style: kTextMainGray)
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [const BoxShadow(
                  color: Color.fromARGB(12, 15, 8, 8),
                  blurRadius: 10,
                )] 
              ),
              child: Container(
                margin: const EdgeInsets.all(6),
                child: SvgPicture.asset('assets/images/Workout_Heart.svg', height: 16))
            ),
            SizedBox(
              width: 34,
              height: 34,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: const Color.fromARGB(50, 255, 79, 79),
                  shadowColor: Colors.transparent
                ),
                onPressed: () {
                  
                }, 
                child: const Text('')),
            )
          ],
        ),
      ],),
    );
  }
}