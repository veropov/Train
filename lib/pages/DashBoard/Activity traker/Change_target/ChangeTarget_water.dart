import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';
import '../Activity_traker.dart';


List CasWater = [ 
  for (var i=1; i<=10; i++)
  i
];

int windex = 0;
var textWaterIndex = CasWater[0];

class ChangeTargetWater extends StatefulWidget {
  final Function? roadRouter;
  const ChangeTargetWater(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<ChangeTargetWater> createState() => _ChangeTargetWaterState();
}

class _ChangeTargetWaterState extends State<ChangeTargetWater> {

  List _targetBool = [
    false, 
    false, 
    false, 
    false, 
    false, 
    false, 
    false
  ];

  Widget StepTargetCarousel() => CarouselSlider.builder(
    itemCount: CasWater.length, 
    itemBuilder: (context, index, realIndex) => Text('${CasWater[index]}', style: TextStyle(fontSize: 65, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 115, 148, 255), fontFamily: "Poppins"), textAlign: TextAlign.center),
    options: CarouselOptions(
      enableInfiniteScroll: false,
      height: 180,
      enlargeCenterPage: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (index, reason) =>
        setState(() {
          windex = index;
        }
      )
    ),
  );

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
                  child: StepTargetCarousel(),
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
                      Navigator.pop(context, MaterialPageRoute(builder: (context) => ListTargets(widget.roadRouter)));
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
                      textWaterIndex = CasWater[windex];
                      //Проверка, добавлен ли виджет подсчета шагов. Если не добавлен - добавляем
                      mapTarget.putIfAbsent('Water target', () => WaterTarget(textWaterIndex));
                      //Если виджет уже добавлен, обновляем кол-во шагов [textIndex = CasSteps[kindex]]
                      mapTarget['Water target'] = WaterTarget(textWaterIndex);
                      
                      Navigator.push(context, Transition(child: Tracker(widget.roadRouter)));
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