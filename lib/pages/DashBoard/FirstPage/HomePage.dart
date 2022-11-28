import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:aga/transition.dart';
import 'package:aga/pages/DashBoard/FirstPage/Page_BMIndex.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Activity_traker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:aga/pages/person_profile.dart';

Widget MainBoard(BMIndex, present, percenting, context, widthScreen) => SingleChildScrollView(child: 
  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      BMI(BMIndex, present, percenting, context),
      TodayTarget(context),
      HeartRate(),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30, right: 15, top: 30),
              width: widthScreen*0.4,
              height: 315,
              decoration: BoxDecoration(
                color: const Color.fromARGB(200, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  const BoxShadow(
                    color: const Color.fromARGB(20, 0, 0, 0),
                    blurRadius: 40,
                    offset: Offset(0,10)
                  )
                ]
              ),
              child: InkWell(
                highlightColor: const Color.fromARGB(255, 234, 236, 255),
                splashColor: const Color.fromARGB(255, 118, 103, 255),
                borderRadius: BorderRadius.circular(20),
                radius: 500,
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //DATE OF WATER
                    //DATE OF WATER
                    //DATE OF WATER
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 10),
                          width: 20,
                          height: 275,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 233, 233, 233),
                            borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 10),
                          width: 20,
                          height: 170,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color.fromARGB(255, 197, 139, 242), Color.fromARGB(255, 180, 192, 254)], 
                              begin: Alignment.topLeft, 
                              end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text('Water Intake', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kBlack)),
                        const SizedBox(height: 5),
                        const Text('4 Liters', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: Color.fromARGB(255, 126, 145, 253))),
                        const SizedBox(height: 10),
                        const Text('Real time updates', style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                        const SizedBox(height: 5),
                        //QUANITY OF WATER
                        //QUANITY OF WATER
                        //QUANITY OF WATER
                        QuanityWater(),
                    ],)
                ],)
              )
            ),
            SleepWidget(widthScreen)
        ],)
      ],)
    ],
  ),
);


//All Widgets


Widget BMI(BMIndex, present, percenting, context) => Stack(
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
                Navigator.push(context, Transition(child: const Page_BMIndex())
                );
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


Widget TodayTarget(context) => Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
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
          const Text('Today Target', style: const TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
          const SizedBox(width: 20),
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
                Navigator.push(context, Transition(child: Activity()));
              },
            )
          ),
      ],)
    ),
],);


Widget HeartRate() => Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Container(
    margin: const EdgeInsets.only(top: 30, left:30, bottom: 15),
    child: const Text('Activity Status', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600, color: kBlack, fontFamily: "Poppins")),
  ),
  Container(
    margin: const EdgeInsets.symmetric(horizontal: 30),
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color.fromARGB(101, 216, 234, 255), Color.fromARGB(92, 159, 183, 255)], 
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight
      ),
      borderRadius: BorderRadius.circular(20)
    ),
    child: InkWell(
      highlightColor: const Color.fromARGB(255, 255, 255, 255),
      splashColor: const Color.fromARGB(255, 209, 204, 252),
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Heart Rate', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kBlack)),
                const SizedBox(height: 5),
                const Text('78 BPM', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: const Color.fromARGB(255, 126, 145, 253)))
              ],
            )
          ),
            Container(
              margin: const EdgeInsets.only(top: 30, right: 50),
              width: 74,
              height: 38,
              child: const Text('change 3mins ago', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Color.fromARGB(255, 104, 126, 250)))
            ),
        ],),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
            SvgPicture.asset('assets/images/Vector109.svg', color: const Color.fromARGB(206, 126, 145, 253)),
            SvgPicture.asset('assets/images/Vector111.svg', color: const Color.fromARGB(255, 170, 183, 255)),
            Container(
              margin: const EdgeInsets.only(left: 192, bottom: 36),
              child: SvgPicture.asset('assets/images/Ellipse102.svg', height: 8, color: const Color.fromARGB(193, 208, 136, 255),)
            ),
          ],),
        )
      ],)
    )
  )
],);


Widget SleepWidget(widthScreen) => Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(
      margin: const EdgeInsets.only(top: 30, right: 20),
      width: widthScreen*0.4,
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(200, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          const BoxShadow(
            color: Color.fromARGB(20, 0, 0, 0),
            blurRadius: 40,
            offset: Offset(0,10)
          )
        ]
      ),
      child: InkWell(
        highlightColor: const Color.fromARGB(255, 234, 236, 255),
        splashColor: const Color.fromARGB(255, 118, 103, 255),
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text('Sleep', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kBlack)),
                const SizedBox(height: 5),
                const Text('8h 20m', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: Color.fromARGB(255, 126, 145, 253))),
                ]
            )),
            SvgPicture.asset('assets/images/Sleep-Graph.svg', color: const Color.fromARGB(255, 138, 88, 255))
        ],)
      )
    ),
    const SizedBox(height: 15),
    Container(
      margin: const EdgeInsets.only(right: 20),
      width: widthScreen*0.4,
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(200, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          const BoxShadow(
            color: Color.fromARGB(20, 0, 0, 0),
            blurRadius: 40,
            offset: Offset(0,10)
          )
        ]
      ),
      child: InkWell(
        highlightColor: const Color.fromARGB(255, 234, 236, 255),
        splashColor: const Color.fromARGB(255, 118, 103, 255),
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text('Calories', style: const TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kBlack)),
                const SizedBox(height: 5),
                const Text('760 kCal', style: const TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: Color.fromARGB(255, 126, 145, 253))),
                ]
            )),
            const SizedBox(height: 10),
            CircularPercentIndicator(
              radius: 38,
              lineWidth: 9,
              linearGradient: const LinearGradient(
                colors: [Color.fromARGB(255, 197, 139, 242), const Color.fromARGB(255, 180, 192, 254)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight
              ),
              circularStrokeCap: CircularStrokeCap.round,
              percent: 0.6,
              backgroundColor: const Color.fromARGB(255, 240, 240, 240),
              reverse: true,
              center: Container(
                alignment: Alignment.center,
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                    begin: Alignment.topLeft, 
                    end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: const Text('230kCal\nleft', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.white), textAlign: TextAlign.center,)
              ),
            ),
        ],)
      )
    )
  ],
);


Widget QuanityWater() => Column(
  children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      margin: const EdgeInsets.only(top: 5, right: 8),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 218, 177, 247), const Color.fromARGB(255, 197, 139, 242)],
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(100)
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text('4pm - now', style: const TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray60)),
      const SizedBox(height: 3),
      const Text('600ml', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 197, 139, 242)))
    ],)
  ],),
  const SizedBox(height: 8),
  
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      margin: const EdgeInsets.only(top: 5, right: 8),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [const Color.fromARGB(255, 218, 177, 247), const Color.fromARGB(255, 197, 139, 242)],
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(100)
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text('2pm - 4pm', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray60)),
      const SizedBox(height: 3),
      const Text('600ml', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 197, 139, 242)))
    ],)
  ],),
  const SizedBox(height: 8),

  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      margin: const EdgeInsets.only(top: 5, right: 8),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 218, 177, 247), Color.fromARGB(255, 197, 139, 242)],
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(100)
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text('11am - 2pm', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray60)),
      const SizedBox(height: 3),
      const Text('600ml', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 197, 139, 242)))
    ],)
  ],),
  const SizedBox(height: 8),

  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      margin: const EdgeInsets.only(top: 5, right: 8),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 218, 177, 247), Color.fromARGB(255, 197, 139, 242)],
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(100)
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text('9am - 11am', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray60)),
      const SizedBox(height: 3),
      const Text('600ml', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 197, 139, 242)))
    ],)
  ],),
  const SizedBox(height: 8),

  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      margin: const EdgeInsets.only(top: 5, right: 8),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 218, 177, 247), const Color.fromARGB(255, 197, 139, 242)],
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(100)
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text('6am - 8am', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray60)),
      const SizedBox(height: 3),
      const Text('600ml', style: TextStyle(fontSize: 8, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 197, 139, 242)))
    ],)
  ],),
],);