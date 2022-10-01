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
      elevation: 2,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: currentIndex == 0 ? SvgPicture.asset('assets/icons/Home_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Home_light.svg', height: 24, color: kGray100)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: currentIndex == 1 ? SvgPicture.asset('assets/icons/Activity_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Activity_light.svg', height: 24, color: kGray100)
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/Activity_fill.svg', height: 1, color: Colors.transparent),
          label: '',
        ),
        BottomNavigationBarItem(
          label: '',
          icon: currentIndex == 3 ? SvgPicture.asset('assets/icons/Camera_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Camera_light.svg', height: 24, color: kGray100)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: currentIndex == 4 ? SvgPicture.asset('assets/icons/Profile_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Profile_light.svg', height: 24, color: kGray100)
        )
      ]
    );
  }
}

Widget FloatButton() => FloatingActionButton(
  child: SvgPicture.asset('assets/icons/Search_light.svg', height: 20, color: Colors.white),
  elevation: 2,
  backgroundColor: Color.fromARGB(255, 149, 174, 254),
  onPressed: () {},
  );
