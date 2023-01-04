import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';

import '../Activity_traker.dart';


  List CasSteps = [ 
    for (var i=10; i<=500; i++)
    i * 100
  ];


class Aga extends StatefulWidget {
  const Aga({Key? key}) : super(key: key);

  @override
  State<Aga> createState() => _AgaState();
}

int kindex = 0;
var textIndex = CasSteps[0];

class _AgaState extends State<Aga> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: CasSteps.length, 
      itemBuilder: (context, index, realIndex) => Text('${CasSteps[index]}', style: TextStyle(fontSize: 65, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 115, 148, 255), fontFamily: "Poppins"), textAlign: TextAlign.center),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        height: 180,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        onPageChanged: (index, reason) =>
          setState(() {
            kindex = index;
          }
        )
      ),
    );
  }
}

class ChangeTargetSteps extends StatefulWidget {
  const ChangeTargetSteps({Key? key}) : super(key: key);

  @override
  State<ChangeTargetSteps> createState() => _ChangeTargetState();
}

class _ChangeTargetState extends State<ChangeTargetSteps> {

  List _targetBool = [
    false, 
    false, 
    false, 
    false, 
    false, 
    false, 
    false
  ];

  @override
  Widget build(BuildContext context) {
  final heightScreen = MediaQuery.of(context).size.height;
  final widthScreen = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: heightScreen*0.35,
                color: Colors.transparent,
                  child: Aga(),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
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
                        subtitle: Text('', style: TextStyle(fontSize: 13, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Color.fromARGB(171, 63, 46, 216))),
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
                      ),
                  ],),
                )
              ),
              Container(
              margin: EdgeInsets.only(bottom: 40),
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
                    child: Text('Back', style: TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins"))
                  ),
                  SizedBox(width: 45),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onPrimary: Color.fromARGB(255, 49, 49, 49),
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                  ),
                  onPressed: () {
                    setState(() {
                      textIndex = CasSteps[kindex];
                      //Проверка, добавлен ли виджет подсчета шагов. Если не добавлен - добавляем
                      map.putIfAbsent('Step target', () => StepTarget(textIndex));
                      //Если виджет уже добавлен, обновляем кол-во шагов [textIndex = CasSteps[kindex]]
                      map['Step target'] = StepTarget(textIndex);
                      
                      Navigator.push(context, Transition(child: Activity()));
                    });
                  }, 
                  child: Text('Save', style: TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")))
                ],
              ),
            )
          ],),
        )
      )
    );
  }
}