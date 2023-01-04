import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_steps.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';

import '../Activity_traker.dart';

  List Cas = [ 
    for (var i=0; i<24; i++)
    i<10 ? '0$i' : i
  ];

  List Las2 = [ 
    for (var i=0; i<6; i++)
      i==0 ? '0${i*10}' : i*10
  ];

  List Las = [ 
    for (var i=0; i<24; i++)
    i<10 ? '0$i' : i
  ];

  List Cas2 = [ 
    for (var i=0; i<6; i++)
      i==0 ? '0${i*10}' : i*10
  ];

  int kindexSleep = 0;
  int lindexSleep = 0;
  int sindexSleep = 0;
  int mindexSleep = 0;

  var textIndexSleep = Cas[0];
  var textIndexSleep2 = Cas2[0];
  var textkIndexSleep = Las[0];
  var textkIndexSleep2 = Las2[0];


class ChangeTarget extends StatefulWidget {
  const ChangeTarget({Key? key}) : super(key: key);

  @override
  State<ChangeTarget> createState() => _ChangeTargetState();
}

class _ChangeTargetState extends State<ChangeTarget> {

  final _targetBool = [
    false, 
    false, 
    false, 
    false, 
    false, 
    false, 
    false
  ];

  Widget Case(widthScreen, heightScreen) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment.centerRight,
        width: widthScreen * 0.2,
        height: heightScreen*0.2,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 150,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) => setState((){
              kindexSleep = index;
            }) 
          ),
          itemCount: Cas.length,
          itemBuilder: (context, index, realIndex) => Text('${Cas[index]}', style: TextStyle(fontSize: 40, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 115, 148, 255), fontFamily: "Poppins"), textAlign: TextAlign.right,)
        ),
      ),
      SizedBox(
        width: 15,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(255, 75, 75, 75)
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(255, 75, 75, 75)
              ),
            ),
        ],),
      ),
      Container(
        alignment: Alignment.centerLeft,
        width: widthScreen * 0.2,
        height: heightScreen*0.2,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 150,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) => setState(() {
              lindexSleep = index;
            })
          ),
          itemCount: Cas2.length,
          itemBuilder: (context, index, realIndex) => Text('${Cas2[index]}', style: TextStyle(fontSize: 40, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 115, 148, 255), fontFamily: "Poppins"), textAlign: TextAlign.left)
        ),
      ),
      Container(
        width: 20,
        height: 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromARGB(255, 75, 75, 75)
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        width: widthScreen * 0.2,
        height: heightScreen*0.2,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 150,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) => setState((){
              sindexSleep = index;
            }) 
          ),
          itemCount: Las.length,
          itemBuilder: (context, index, realIndex) => Text('${Las[index]}', style: TextStyle(fontSize: 40, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 115, 148, 255), fontFamily: "Poppins"), textAlign: TextAlign.right,)
        ),
      ),
      SizedBox(
        width: 15,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(255, 75, 75, 75)
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(255, 75, 75, 75)
              ),
            ),
        ],),
      ),
      Container(
        alignment: Alignment.centerLeft,
        width: widthScreen * 0.2,
        height: heightScreen*0.2,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 150,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) => setState(() {
              mindexSleep = index;
            })
          ),
          itemCount: Las2.length,
          itemBuilder: (context, index, realIndex) => Text('${Las2[index]}', style: TextStyle(fontSize: 40, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 115, 148, 255), fontFamily: "Poppins"), textAlign: TextAlign.left)
        ),
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
  final heightScreen = MediaQuery.of(context).size.height;
  final widthScreen = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: heightScreen*0.35,
              color: Colors.transparent,
                child: Case(widthScreen, heightScreen),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(44, 196, 212, 241),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      children: [
                        _targetBool.every((element) => element == true) ? Text('Every day', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: kBlack)) : Text('Every '),
                        for (var i=0; i<7; i++)
                          _targetBool.every((element) => element == true) ? SizedBox(height: 22) :
                          _targetBool[i] ? 
                          Text(days[i] + ', ', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: kBlack)) : SizedBox(height: 22),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset('')
                        )
                    ],),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (var i=0; i<7; i++) InkWell(
                          onTap: () {
                            setState(() {
                            _targetBool[i] = !_targetBool[i];
                            });
                          },
                          highlightColor: Color.fromARGB(255, 128, 126, 255),
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            alignment: Alignment.center,
                            width: 38,
                            height: 38,
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(), 
                              color: _targetBool[i] ? Color.fromARGB(155, 143, 149, 235) : Color.fromARGB(155, 214, 214, 241)
                            ),
                              child: Text(days[i], style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins"))
                          )
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      title: Text('Notification enabling ', style: TextStyle(fontSize: 15, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Color.fromARGB(255, 49, 49, 49))),
                      subtitle: Text('Every day', style: TextStyle(fontSize: 13, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Color.fromARGB(171, 63, 46, 216))),
                      trailing: SwitchButton(width: 40, heiht: 20),
                      onTap: () {},
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      width: double.infinity,
                      height: 1,
                      color: Color.fromARGB(255, 179, 179, 179)
                    ),
                    ListTile(
                      title: Text('Notification sound', style: TextStyle(fontSize: 15, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Color.fromARGB(255, 49, 49, 49))),
                      subtitle: Text('Incoming', style: TextStyle(fontSize: 13, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Color.fromARGB(171, 63, 46, 216))),
                      trailing: SwitchButton(width: 40, heiht: 20),
                      onTap: () {},
                    )
                ],),
              )
            ),
          SizedBox(
            height: heightScreen*0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Color.fromARGB(255, 49, 49, 49),
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                    
                ),
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => ListTarget()));
                }, 
                child: Text('Back', style: TextStyle(fontSize: 22, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins"))),
                SizedBox(width: 45),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Color.fromARGB(255, 49, 49, 49),
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                ),
                onPressed: () {
                  textIndexSleep = Cas[kindexSleep];
                  textIndexSleep2 = Cas[lindexSleep];
                  textkIndexSleep = Las[sindexSleep];
                  textkIndexSleep2 = Las[mindexSleep];
                  mapTarget.putIfAbsent('Sleep target', () => 
                    SleepTarget('${textIndexSleep.toString()}:${textIndexSleep2.toString()} — ${textkIndexSleep.toString()}:${textkIndexSleep2.toString()}'));
                  mapTarget['Sleep target'] = SleepTarget('${textIndexSleep.toString()}:${textIndexSleep2.toString()} — ${textkIndexSleep.toString()}:${textkIndexSleep2.toString()}');

                  Navigator.push(context, Transition(child: Activity()));
                }, 
                child: Text('Save', style: TextStyle(fontSize: 22, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")))
              ],
            ),
          )
        ],)
      )
    );
  }
}