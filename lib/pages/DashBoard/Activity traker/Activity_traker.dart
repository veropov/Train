import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import '../FirstPage/DashBoard_firstPage.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/navBar.dart';
import 'package:aga/pages/DashBoard/Activity traker/List_target.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {


  mm() { 
    if (count%2 != 0 && count>2) {
      return 160 + (count-1)*30;
    } else if (count%2 == 0){
      return 160 + count*30;
    } else {
      return 160;
    }
  }

  var count = 1;
  bool countElem = false;

  @override
  Widget build(BuildContext context) {

    final widthScreen = MediaQuery.of(context).size.width;

    List flowTarget = [
      Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        width: widthScreen*0.35,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(8)
        ),
      ), 
    ];
  ///
  ///
  ///
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
      body: Container(
        width: double.infinity,
        height: mm(),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromARGB(121, 218, 235, 255), Color.fromARGB(108, 206, 217, 255)], 
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(22)
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Today Target'),
                SizedBox(width: 20),
                InkWell(
                  borderRadius: BorderRadius.circular(8),
                  highlightColor: Color.fromARGB(255, 28, 89, 255),
                  onTap: () {
                  Navigator.push(context, Transition(child: ListTarget()));
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(121, 122, 177, 255), Color.fromARGB(122, 0, 60, 255)], 
                        begin: Alignment.topLeft, 
                        end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Container(
                    padding: EdgeInsets.all(9),
                    child: SvgPicture.asset('assets/images/Plus.svg', color: Colors.white)
                  )
                )
              )
            ],),
            SizedBox(height: 10),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  width: widthScreen*0.35,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 90, 243, 248), Color.fromARGB(255, 255, 182, 87)], 
                        begin: Alignment.topLeft, 
                        end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              for (var i=0; i<count; i++) InkWell(
                splashColor: Color.fromARGB(255, 28, 89, 255),
                onTap: () {},
                child: flowTarget[i]) 
              ],
            ),
          ],
        )
      )
    );
  }
}

