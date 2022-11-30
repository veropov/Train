import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/navBar.dart';

int height = 170;
int weight = 55;


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        ],),
        body: Avatar()
      )
    );
  }
}

Widget Avatar() => Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color.fromARGB(255, 223, 229, 254)
          ),
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Text('Stefani Wong'),
            Text('Lose a Fat Program')
          ],
        ),
        Container(

        )
      ],
    ),
    Row(
      children: [
        
      ],
    )
  ],
);