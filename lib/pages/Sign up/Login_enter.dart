import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginEnter extends StatefulWidget {
  const LoginEnter({Key? key}) : super(key: key);

  @override
  State<LoginEnter> createState() => _LoginEnterState();
}


class _LoginEnterState extends State<LoginEnter> {
  bool _obscureTextLogin = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 40,),
              Text('Hey there,', style: kTextH3),
              Text('Welcome Back', style: kTextH2Bold),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: kBorder,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: kTextMain,
                    border: InputBorder.none,
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10),
                      child: SvgPicture.asset('assets/icons/Message.svg', color: kGray100)
                    )
                  ),
                )
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: kBorder,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: TextFormField(
                  obscureText: _obscureTextLogin,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: kTextMain,
                    border: InputBorder.none,
                    prefixIcon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10),
                      child: SvgPicture.asset('assets/icons/Lock.svg', color: kGray100)
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 15, right: 10), 
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                            _obscureTextLogin = !_obscureTextLogin;
                          });
                        },
                        child: _obscureTextLogin ? SvgPicture.asset('assets/icons/Hide-Password_light.svg', color: kGray100) : SvgPicture.asset('assets/icons/Hide-Password-Unactive.svg', color: kGray100), 
                      )
                    )
                  ),
                )
              ),
              SizedBox(height: 10),
              InkWell(
                highlightColor: Colors.grey,
                child: Text('Forgot your password?', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", decoration: TextDecoration.underline, color: kGray100)),
                onTap: () {},
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
                color: Color.fromARGB(255, 149, 175, 253),
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
                    shape: StadiumBorder(),
                    onPrimary: kWhite,
                    shadowColor: Colors.transparent,
                    primary: Colors.transparent,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                  onPressed: () {}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SvgPicture.asset('assets/icons/Login_fill.svg', color: Colors.white),
                      SizedBox(width: 8),
                      Text('Login', style: kTextButton)
                    ],) 
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
              Text('Dont have an account yet?', style: TextStyle(color: kBlack, fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
              InkWell(
                splashColor: Colors.white,
                highlightColor: Color.fromARGB(129, 219, 166, 255),
                child: Text(' Register', style: TextStyle(color: Color.fromARGB(255, 199, 140, 239), fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")
                ),
                onTap: () {
                },
              )
          ])
          ),
        ],)
      ],)
    ));
  }
}