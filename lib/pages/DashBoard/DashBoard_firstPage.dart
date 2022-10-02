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
          toolbarHeight: 60,
          title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome,', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
            Text('Stefani Wong', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
          ]),
          titleTextStyle: TextStyle(),
          elevation: 0,
          backgroundColor: Color.fromARGB(220, 255, 255, 255),
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
      //MAIN ITEMS
      //MAIN ITEMS
      //MAIN ITEMS
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: double.infinity,
                height: 146,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: SvgPicture.asset('assets/images/backPages/Dots.svg')
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('BMI (Body Mass Index)', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins", color: kWhite)),
                          SizedBox(height: 5),
                          Text('You have a normal weight', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: kWhite, fontFamily: "Poppins"))
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 95,
                        height: 35,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromARGB(255, 218, 177, 247), Color.fromARGB(255, 197, 139, 242)],
                            begin: Alignment.topLeft, 
                            end: Alignment.bottomRight
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: kWhite,
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: Text('View More', style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins")),
                          onPressed: () {},
                        )
                      )
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)
                        ),
                      )
                    ],)
              ],)
            ],)
          ],
        ),
        bottomNavigationBar: NavigatBar(),
        floatingActionButton: FloatButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
