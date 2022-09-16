
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSecPage extends StatefulWidget {
  const LoginSecPage({Key? key}) : super(key: key);

  @override
  State<LoginSecPage> createState() => _LoginSecPageState();
}

class _LoginSecPageState extends State<LoginSecPage> {
  bool _obscureText = true;
  bool _hideCheck = true;
  Color _button = Color.fromARGB(255, 48, 105, 230);
  final items = ['Female', 'Male'];
  String? value;

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
              Container(margin: EdgeInsets.only(top:40), child: Text('Let’s complete your profile,', style: kTextH2Bold)),
              Container(margin: EdgeInsets.only(top:5), child: Text('It will help us to know more about you!', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)))
            ],) ,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height: 48,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                  child: DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(6),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 16),
                      hintText: 'Choose Gender',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(margin: EdgeInsets.only(top: 15, bottom: 15, left: 13, right: 6), child: SvgPicture.asset('assets/icons/2 User_light.svg', color: kGray100)),
                      suffixIcon: Container(margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10), child: SvgPicture.asset('assets/icons/Arrow - Down 2_light.svg', color: kGray100)),
                    ),
                    isExpanded: true, 
                    iconEnabledColor: Colors.transparent,
                    value: value,
                    items: items.map(buidMenuItem).toList(),
                    onChanged: (value) => setState(() => this.value = value as String)
                    )
                ),
                Container(
                  height: 48,
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10), child: SvgPicture.asset('assets/icons/Calendar_light.svg', color: kGray100))
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
                      hintText: 'Your Weight',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15, left: 13, right: 10), 
                        child: SvgPicture.asset('assets/icons/Weight-one_light.svg', color: kGray100))
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
                      hintText: 'Your Height',
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      prefixIcon: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15, left: 13, right: 10), 
                        child: SvgPicture.asset('assets/icons/Swap_light.svg', color: kGray100)
                      ),
                    ),
                  )
                )
              ])
            )
          ]),
        ])
      )
    );
  }
}