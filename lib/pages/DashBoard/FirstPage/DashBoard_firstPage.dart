
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/navBar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:aga/transition.dart';
import 'package:aga/pages/person_profile.dart';
import 'dart:math' as math;
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';



class BoardFirstPage extends StatefulWidget {
  const BoardFirstPage({Key? key}) : super(key: key);

  @override
  State<BoardFirstPage> createState() => _BoardFirstPageState();
}

class _BoardFirstPageState extends State<BoardFirstPage> {

  @override
  Widget build(BuildContext context) {
    var present = (weight/math.pow(height, 2))*100;
    var percenting = (present * 100).round();
    
  final widthScreen = MediaQuery.of(context).size.width;

  BMIndex() { 
    if (percenting <= 18) {
      return const Text(' underweight', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins"));
    } else if (percenting>=19 && percenting <=25) {
      return const Text(' normal weight', style: const TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins"));
    } else {
      return const Text(' overweight', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins"));
    }
  }

    void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  widgetList() {
    if (currentIndex == 0) { return MainBoard(BMIndex, present, percenting, context, widthScreen);}
    if (currentIndex == 1) {return person();}
    if (currentIndex == 3) { return MainBoard(BMIndex, present, percenting, context, widthScreen);}
    if (currentIndex == 4) {return person();}
  }

    return SafeArea(child: 
      Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 60,
          title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome,', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
            const Text('Stefani Wong', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
          ]),
          titleTextStyle: const TextStyle(),
          elevation: 0,
          backgroundColor: const Color.fromARGB(220, 255, 255, 255),
          actions: [Stack(
            alignment: Alignment.center,
            children: [Container(
              margin: const EdgeInsets.only(right: 20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color.fromARGB(121, 238, 238, 238), Color.fromARGB(134, 238, 233, 255)], 
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter
                ),
                borderRadius: BorderRadius.circular(8)
              )
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/Notification_light.svg', height: 16),
                splashRadius: 16,
                onPressed: () {}
              )
            )
          ],)
        ],
      ),
      body: widgetList(),
      bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        elevation: 0,
        height: 65,
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        indicatorShape: StadiumBorder()
      ),
      child: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 60,
        selectedIndex: currentIndex,
        onDestinationSelected: onTap,
        destinations: [
          NavigationDestination(
            label: '',
            icon: currentIndex == 0 ? SvgPicture.asset('assets/icons/Home_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Home_light.svg', height: 24, color: kGray100)
          ),
          NavigationDestination(
            label: '',
            icon: currentIndex == 1 ? SvgPicture.asset('assets/icons/Activity_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Activity_light.svg', height: 24, color: kGray100)
          ),
          SizedBox(width: 25),
          NavigationDestination(
            label: '',
            icon: currentIndex == 3 ? SvgPicture.asset('assets/icons/Camera_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Camera_light.svg', height: 24, color: kGray100)
          ),
          NavigationDestination(
            label: '',
            icon: currentIndex == 4 ? SvgPicture.asset('assets/icons/Profile_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Profile_light.svg', height: 24, color: kGray100)
          )
      ],)
    ),
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}

Widget FloatButton() => SizedBox.fromSize(
  size: Size.square(60),
  child: FloatingActionButton(
  child: SvgPicture.asset('assets/icons/Search_light.svg', height: 20, color: Colors.white),
  elevation: 0,
  highlightElevation: 2,
  splashColor: Color.fromARGB(255, 56, 126, 255),
  backgroundColor: Color.fromARGB(255, 149, 174, 254),
  onPressed: () {},
  )
);

Widget person() => Column(children: [
  
],);