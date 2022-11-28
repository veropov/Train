import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/navBar.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_sleep.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Change_target/ChangeTarget_steps.dart';
import 'package:aga/pages/DashBoard/FirstPage/DashBoard_firstPage.dart';

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
        title: Text('Add target', style: const TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
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
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_glass.svg', height: 35),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Water Intake', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {
              
            },
          ),
          SizedBox(height: 5),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_boots.svg', height: 35),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Foot Steps', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {
              Navigator.push(context, Transition(child: ChangeTargetSteps()));
            },
          ),
          SizedBox(height: 5),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_calories.svg', height: 38),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Burn calories', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {},
          ),
          SizedBox(height: 5),     
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            leading: SvgPicture.asset('assets/images/target_sleep.svg', height: 35),
            trailing: SvgPicture.asset(''),
            tileColor: Color.fromARGB(45, 202, 221, 255),
            title: Text('Sleep', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins")),
            onTap: () {
              Navigator.push(context, Transition(child: ChangeTarget()));
            },
          ),   
        ],
      ),
      bottomNavigationBar: NavigatBar(),
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}