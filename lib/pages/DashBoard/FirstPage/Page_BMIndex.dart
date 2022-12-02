import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'DashBoard_firstPage.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/FirstPage/DashBoard_firstPage.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/pages/person_profile.dart';

class Page_BMIndex extends StatefulWidget {
  const Page_BMIndex({Key? key}) : super(key: key);

  @override
  State<Page_BMIndex> createState() => _Page_BMIndexState();
}

class _Page_BMIndexState extends State<Page_BMIndex> {
  bool HideText = true;
  Widget MoreText() => Text(' the body height, and is expressed in units of kg/m2, resulting from mass in kilograms and height in metres', style: kTextH2Medium);

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

    widgetList() {
    if (currentIndex == 0) {return BodyMassIndex(heightScreen, HideText, setState);}
    if (currentIndex == 1) {return Profile();}
    if (currentIndex == 3) {return Home();}
    if (currentIndex == 4) {return Profile();}
  }


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Text('Body mass index', style: const TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
          titleTextStyle: TextStyle(),
          elevation: 0,
          backgroundColor: Color.fromARGB(220, 255, 255, 255),
          leading: Stack(
            alignment: Alignment.center,
            children: [Container(
              margin: const EdgeInsets.only(left: 20),
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
              margin: const EdgeInsets.only(left: 20),
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/Arrow - Left_light.svg', height: 16),
                splashRadius: 16,
                onPressed: () {
                  Navigator.pop(context);
                }
              )
            )
          ],)
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
      )
    );
  }
}

Widget BodyMassIndex(heightScreen, HideText, setState) => SingleChildScrollView(
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
);