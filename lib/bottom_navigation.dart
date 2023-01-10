import 'package:aga/main.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Activity_traker.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';
import 'package:aga/transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'appbar.dart';
import 'constant.dart';
import 'pages/Profile/person_profile.dart';

int currentIndex = 0; //При входе в приложение Навбар на первом (начальном) экране

class NavBottomBar extends StatefulWidget {
  final Function? roadRouter;
  const NavBottomBar(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<NavBottomBar> createState() => _NavBottomBarState();
}

class _NavBottomBarState extends State<NavBottomBar> {
  @override
  
  Widget build(BuildContext context) {

    return NavigationBarTheme(
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
        destinations: [
          Stack(
            alignment: Alignment.center,
            children: [
              currentIndex == 0 ? SvgPicture.asset('assets/icons/Home_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Home_light.svg', height: 24, color: kGray100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Color.fromARGB(120, 199, 179, 214),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  animationDuration: Duration(milliseconds: 5),
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                    widget.roadRouter!(AllRoutes.home);
                  });
                }, 
                child: Container()
              )
            ]
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              currentIndex == 1 ? SvgPicture.asset('assets/icons/Activity_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Activity_light.svg', height: 24, color: kGray100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Color.fromARGB(120, 199, 179, 214),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  animationDuration: Duration(milliseconds: 5),
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                    widget.roadRouter!(AllRoutes.workout);
                  });
                }, 
                child: Container()
              )
            ]
          ),
          SizedBox(width: 25),
          Stack(
            alignment: Alignment.center,
            children: [
              currentIndex == 3 ? SvgPicture.asset('assets/icons/Camera_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Camera_light.svg', height: 24, color: kGray100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Color.fromARGB(120, 199, 179, 214),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  animationDuration: Duration(milliseconds: 5),
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                    widget.roadRouter!(AllRoutes.photo);
                  });
                }, 
                child: Container()
              )
            ]
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              currentIndex == 4 ? SvgPicture.asset('assets/icons/Profile_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Profile_light.svg', height: 24, color: kGray100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Color.fromARGB(120, 199, 179, 214),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  animationDuration: Duration(milliseconds: 5),
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                    widget.roadRouter!(AllRoutes.profile);

                  });
                }, 
                child: Container()
              )
            ]
          )
      ],)
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



// NavigationBar(
//         labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
//         height: 60,
//         selectedIndex: currentIndex,
//         onDestinationSelected: onTap,
//         destinations: [
//           NavigationDestination(
//             label: '',
//             icon: currentIndex == 0 ? SvgPicture.asset('assets/icons/Home_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Home_light.svg', height: 24, color: kGray100)
//           ),
//           NavigationDestination(
//             label: '',
//             icon: currentIndex == 1 ? SvgPicture.asset('assets/icons/Activity_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Activity_light.svg', height: 24, color: kGray100)
//           ),
//           SizedBox(width: 25),
//           NavigationDestination(
//             label: '',
//             icon: currentIndex == 3 ? SvgPicture.asset('assets/icons/Camera_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Camera_light.svg', height: 24, color: kGray100)
//           ),
//           NavigationDestination(
//             label: '',
//             icon: currentIndex == 4 ? SvgPicture.asset('assets/icons/Profile_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Profile_light.svg', height: 24, color: kGray100)
//           )
//       ],)

