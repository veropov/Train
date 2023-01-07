import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'appbar.dart';
import 'constant.dart';

int currentIndex = 0; //При входе в приложение Навбар на первом (начальном) экране

class NavBottomBar extends StatefulWidget {
  const NavBottomBar({Key? key}) : super(key: key);

  @override
  State<NavBottomBar> createState() => _NavBottomBarState();
}

class _NavBottomBarState extends State<NavBottomBar> {
  @override
  
  Widget build(BuildContext context) {

  void onTap(int index) {
    setState(() {
      if (index == 0) Navigator.pushNamed(context, '/Home');
      if (index == 1) Navigator.pushNamed(context, '/Workout');
      if (index == 4) Navigator.pushNamed(context, '/Profile');
    });
  }

    return Scaffold(
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
