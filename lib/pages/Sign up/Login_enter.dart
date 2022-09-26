import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginEnter extends StatefulWidget {
  const LoginEnter({Key? key}) : super(key: key);

  @override
  State<LoginEnter> createState() => _LoginEnterState();
}

class _LoginEnterState extends State<LoginEnter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
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
              )
          ],)
      ],)
    ));
  }
}