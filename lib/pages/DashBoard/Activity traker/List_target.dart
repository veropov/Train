import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/navBar.dart';

class ListTarget extends StatefulWidget {
  const ListTarget({Key? key}) : super(key: key);

  @override
  State<ListTarget> createState() => _ListTargetState();
}

class _ListTargetState extends State<ListTarget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              gradient: const LinearGradient(colors: [Color.fromARGB(101, 216, 234, 255), Color.fromARGB(92, 159, 183, 255)], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight
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
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_glass.svg', height: 40),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Water Intake', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
          ),
          SizedBox(height: 10),
        ],
      )
    );
  }
}