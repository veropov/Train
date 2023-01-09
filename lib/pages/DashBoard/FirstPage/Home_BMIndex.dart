
import 'package:aga/constant.dart';
import 'package:aga/main.dart';
import 'package:aga/transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'Page_BMIndex.dart';

class Home_BMI extends StatefulWidget {
  final Function? roadRouter;
  const Home_BMI(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<Home_BMI> createState() => _Home_BMIState();
}

class _Home_BMIState extends State<Home_BMI> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        width: double.infinity,
        height: 146,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 25),
        child: SvgPicture.asset('assets/images/backPages/Dots.svg')
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('BMI (Body Mass Index)', style: const TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: kWhite)),
                  const SizedBox(height: 5),
                  Row(children: [
                  const Text('You have a', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins")),
                  BMIndex(),
                  ],)
                ],
              ),
              const SizedBox(height: 15),
              Container(
                width: 95,
                height: 35,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color.fromARGB(255, 218, 177, 247), Color.fromARGB(255, 197, 139, 242)],
                    begin: Alignment.topLeft, 
                    end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: kWhite,
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                    onSurface: Colors.amber,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('View More', style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins")),
                  onPressed: () {
                      Navigator.push(context, Transition(child: BodyMassIndex(widget.roadRouter)));
                  },
                )
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromARGB(78, 255, 255, 255),
                      blurRadius: 10,
                    )
                  ]
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                  child: CircularPercentIndicator(
                    radius: 50,
                    linearGradient: const LinearGradient(
                      colors: [Color.fromARGB(255, 218, 177, 247), Color.fromARGB(255, 197, 139, 242)],
                      begin: Alignment.topLeft, 
                      end: Alignment.bottomRight
                    ),
                    backgroundColor: Colors.transparent,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: present,
                    lineWidth: 20,
                    animation: true,
                    animationDuration: 1000,
                    center: Text('${percenting}', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: kGray100)),
                  )
                )
            ],),
        ],)
    ],);
  }
}