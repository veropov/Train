import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:aga/constant.dart';

class NavigatBar extends StatefulWidget {
  const NavigatBar({Key? key}) : super(key: key);

  @override
  State<NavigatBar> createState() => _NavigatBarState();
}

class _NavigatBarState extends State<NavigatBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: kGray100,
      selectedItemColor: Color.fromARGB(255, 170, 105, 219),
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: currentIndex == 0 ? SvgPicture.asset('assets/icons/Home_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Home_light.svg', height: 24, color: kGray100)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset('assets/icons/Activity_light.svg', height: 24)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset('assets/icons/Camera_light.svg', height: 24)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SvgPicture.asset('assets/icons/Profile_light.svg', height: 24)
        )
      ]
    );
  }
}