// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aga/icons/person_icons.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/FitnestX.png')
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 15),
                child: Text('Everybody Can Train',
                  style: kTextTitle
                )
              )
            ],)
          ),
        ]
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 40, left: 30, right: 30),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60), 
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 146, 166, 253)], 
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight
          ),
          boxShadow: [ 
            BoxShadow(
              color: shadowBlue,
              blurRadius: 22,
              offset: Offset(0,10)
            )
          ]
        ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: kWhite,
              shadowColor: Colors.transparent,
              primary: Colors.transparent,
              elevation: 0,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            ),
            onPressed: () {  }, 
              child: Text('Get Started', style: kTextButton)
            ),
      ),
    );
  }
}

