import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:aga/pages/person_profile.dart';
import 'package:aga/pages/DashBoard/FirstPage/DashBoard_firstPage.dart';

  int currentIndex = 0;


class NavigatBar extends StatefulWidget {
  const NavigatBar({Key? key}) : super(key: key);

  @override
  State<NavigatBar> createState() => _NavigatBarState();
}

class _NavigatBarState extends State<NavigatBar> {


  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

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
    );
  }
}



