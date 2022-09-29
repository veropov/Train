// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/transition.dart';
import 'package:aga/pages/Sign up/Login_secondPage.dart';
import 'package:aga/pages/Sign up/Login_enter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool _hideCheck = true;
  Color _button = Color.fromARGB(255, 48, 105, 230);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          children: [
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
              Container(margin: EdgeInsets.only(top:40), child: Text('Hey there,', style: kTextH3)),
              Container(margin: EdgeInsets.only(top:5), child: Text('Create an Account', style: kTextH2Bold))
            ],) ,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height: 48,
                  margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'Choose Gender',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10), child: SvgPicture.asset('assets/icons/Profile.svg', color: kGray100))
                    ),
                  )
                ),
                Container(
                  height: 48,
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'Date of Birth',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10), child: SvgPicture.asset('assets/icons/Profile.svg', color: kGray100))
                    ),
                  )
                ),
                Container(
                  height: 48,
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15, left: 13, right: 10), 
                        child: SvgPicture.asset('assets/icons/Message.svg', color: kGray100))
                    ),
                  )
                ),
                Container(
                  height: 48,
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                  child: TextFormField(
                    obscureText: _obscureText,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15, left: 13, right: 10), 
                        child: SvgPicture.asset('assets/icons/Lock.svg', color: kGray100)
                      ),
                      suffixIcon: 
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 15, right: 10), 
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                              _obscureText = !_obscureText;
                              });
                            },
                            child: _obscureText ? SvgPicture.asset('assets/icons/Hide-Password_light.svg', color: kGray100) : SvgPicture.asset('assets/icons/Hide-Password-Unactive.svg', color: kGray100), 
                          )
                        )
                    ),
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(border: Border.all(color: kGray60), borderRadius: BorderRadius.circular(4)),
                      margin: EdgeInsets.only(top: 10, left: 30),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                          _hideCheck = !_hideCheck;
                          });
                        },
                        child: _hideCheck ? null : Icon(Icons.check, size: 10) 
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('By continuing you accept our ', style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
                              InkWell(
                                onTap: () {},
                                child: Text('Privacy Policy ', style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", decoration: TextDecoration.underline)),
                              ),
                              Text('and', style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
                            ],
                          ),
                        InkWell(
                          onTap: () {},
                            child: Text('Term of Use', style: TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", decoration: TextDecoration.underline)),
                          )
                        ],
                      )
                    ),
                  ]
                ),
            ],)
          ),
        ],),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30, left: 30, right: 30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60), 
                color: _hideCheck ? _button = Color.fromARGB(118, 133, 133, 133) : _button = Color.fromARGB(255, 149, 175, 253),
                boxShadow: [ 
                  BoxShadow(
                    color: _hideCheck ? Colors.transparent : shadowBlue,
                    blurRadius: 22,
                    offset: Offset(0,10)
                  )
                ]
              ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    onPrimary: _hideCheck ? Color.fromARGB(0, 199, 199, 199) : kWhite,
                    shadowColor: Colors.transparent,
                    primary: Colors.transparent,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                  onPressed: () { 
                    _hideCheck ? null : Navigator.push(context, Transition(child: LoginSecPage())
                    );
                   }, 
                    child: Text('Registr', style: kTextButton)
                  ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30, right: 15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(14),
                  splashColor: Color.fromARGB(188, 130, 167, 255),
                  highlightColor: Colors.transparent,
                  child: Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(color: kGray100), borderRadius: BorderRadius.circular(14)),
                    child: SvgPicture.asset('assets/images/Google.svg')
                  ),
                onTap: () {}
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30, left: 15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(14),
                  splashColor: Color.fromARGB(188, 130, 167, 255),
                  highlightColor: Colors.transparent,
                  child: Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(color: kGray100), borderRadius: BorderRadius.circular(14)),
                    child: SvgPicture.asset('assets/images/Facebook.svg')
                  ),
                onTap: () {}
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Already have an account?', style: TextStyle(color: kBlack, fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
              InkWell(
                splashColor: Colors.white,
                highlightColor: Color.fromARGB(129, 219, 166, 255),
                child: Text(' Login', style: TextStyle(color: Color.fromARGB(255, 199, 140, 239), fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")
                ),
                onTap: () {
                  Navigator.push(context, Transition(child: LoginEnter())
                  );
                },
              )
          ])
          ),
        ],)
      ]),
      )
    );
  }
}
