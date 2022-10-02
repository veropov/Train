import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/navBar.dart';
import 'package:flutter_svg/svg.dart';

class BoardFirstPage extends StatefulWidget {
  const BoardFirstPage({Key? key}) : super(key: key);

  @override
  State<BoardFirstPage> createState() => _BoardFirstPageState();
}

class _BoardFirstPageState extends State<BoardFirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome,', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
            Text('Stefani Wong', style: kTextH2Bold),
          ]),
          titleTextStyle: TextStyle(),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [Stack(
            alignment: Alignment.center,
            children: [Container(
              margin: EdgeInsets.only(right: 20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color.fromARGB(213, 245, 245, 245), Color.fromARGB(0, 255, 255, 255)], 
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter
                ),
                borderRadius: BorderRadius.circular(8)
              )
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/Notification_light.svg', height: 16),
                splashRadius: 16,
                onPressed: () {}
              )
            )
          ],)
        ],
      ),
        body: Column(),
        bottomNavigationBar: NavigatBar(),
        floatingActionButton: FloatButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
