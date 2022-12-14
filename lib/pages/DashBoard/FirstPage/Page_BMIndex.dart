import 'package:aga/appbar.dart';
import 'package:aga/bottom_navigation.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/Profile/Profile_model_change.dart';
import 'package:aga/transition.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

var present = (weight/math.pow(height, 2))*100;
var percenting = (present * 100).round();

BMIndex() { 
  if (percenting <= 18) {
    return const Text(' underweight', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins"));
  } else if (percenting>=19 && percenting <=25) {
    return const Text(' normal weight', style: const TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins"));
  } else {
    return const Text(' overweight', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins"));
  }
}

class BodyMassIndex extends StatefulWidget {
  final Function? roadRouter;
  const BodyMassIndex(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<BodyMassIndex> createState() => _BodyMassIndexState();
}

class _BodyMassIndexState extends State<BodyMassIndex> {
  bool HideText = true;

  @override
  Widget build(BuildContext context) {
  final heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(60),
        child: App(
          titleApp: Text('Body Mass Index', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
          appAction: true,
          appLeading: true,
          centerTitle: true,
          Navigator: true,
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: heightScreen*0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(1, 149, 156, 254), Color.fromARGB(1, 149, 156, 254)], 
                    begin: Alignment.topCenter, 
                    end: Alignment.bottomCenter
                ) ,
                borderRadius: BorderRadius.circular(20)
              ),
              child: SvgPicture.asset('assets/images/BMI.svg')
            ),
            Container(
            margin: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'Descriptions', 
              style: kTextH1Bold,
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: kTextH2Medium,
                    children: [
                      TextSpan(text: 'Body mass index (BMI) is a value derived from the weight and height of a person.\n'),
                      TextSpan(text: 'The BMI is defined as the by the square of'),
                      TextSpan(text: HideText ? null : ' the body height, and is expressed in units of kg/m2, resulting from mass in kilograms and height in metres.'),
                    ]
                  ),
                ),
                InkWell(
                  highlightColor: HideText ? Color.fromARGB(255, 142, 172, 255) : Color.fromARGB(255, 255, 255, 255),
                  child: HideText ? Text('Read more...', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 73, 158, 255), fontFamily: "Poppins")) : Text('d', style: TextStyle(color: Colors.transparent)),
                  onTap: () {
                    setState(() {
                      HideText = false;
                    });
                  },
                ),
                HideText ? SizedBox(height: 20) : SizedBox(height: 0),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 242, 241, 255), Color.fromARGB(255, 240, 240, 240)], 
                      begin: Alignment.topCenter, 
                      end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: SvgPicture.asset('assets/images/Index_body.svg')
                )
              ],
            )
          ),
        ],),
      ),
      bottomNavigationBar: NavBottomBar(widget.roadRouter),
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}