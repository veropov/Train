
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/transition.dart';
import 'package:aga/pages/Sign up/Login_thirdPage.dart';

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
  final heightScreen = MediaQuery.of(context).size.height;
  final weightScreen = MediaQuery.of(context).size.width;
    return SafeArea(child: 
      Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Stack(
            alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: TopCliper(),
                  child: Container(
                    height: heightScreen*0.3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 146, 166, 253)], 
                          begin: Alignment.topLeft, 
                          end: Alignment.bottomRight
                      ),
                    ),
                  )
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 80),
                  child: SvgPicture.asset('assets/images/Second_login_page.svg', height: heightScreen*0.3)
                )
              ],
            ),
          ),
        //Inputs
        //Inputs
        //Inputs
        Column(
          children: [
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
              Container(margin: EdgeInsets.only(top:5), child: Text('Let’s complete your profile,', style: kTextH2Bold)),
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
                    dropdownColor: Color.fromARGB(255, 255, 255, 255),
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
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 30),
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
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                    onPressed: () {
                      Navigator.push(context, Transition(child: LoginThirdPage())
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Container(child: Text('Next', style: kTextButton)),
                      Container(child: SvgPicture.asset('assets/icons/Arrow - Right_light.svg', color: Colors.white))
                    ],)
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

class TopCliper extends CustomClipper<Path> {
 @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 350;
    path.lineTo(197.9 * _xScaling,257.7 * _yScaling);
    path.cubicTo(179.5 * _xScaling,254.39999999999998 * _yScaling,163.7 * _xScaling,243.2 * _yScaling,145.10000000000002 * _xScaling,241.29999999999998 * _yScaling,);
    path.cubicTo(115.90000000000002 * _xScaling,238.29999999999998 * _yScaling,73.20000000000002 * _xScaling,268.5 * _yScaling,58.10000000000002 * _xScaling,243.2 * _yScaling,);
    path.cubicTo(41.700000000000024 * _xScaling,215.6 * _yScaling,100.70000000000002 * _xScaling,186.5 * _yScaling,93.90000000000002 * _xScaling,155.1 * _yScaling,);
    path.cubicTo(87.30000000000003 * _xScaling,124.3 * _yScaling,29.700000000000017 * _xScaling,123 * _yScaling,25.600000000000023 * _xScaling,91.8 * _yScaling,);
    path.cubicTo(22.200000000000024 * _xScaling,65.9 * _yScaling,55.700000000000024 * _xScaling,48.4 * _yScaling,78.40000000000002 * _xScaling,35.599999999999994 * _yScaling,);
    path.cubicTo(98.70000000000002 * _xScaling,24.199999999999996 * _yScaling,123.00000000000003 * _xScaling,24.299999999999994 * _yScaling,146.3 * _xScaling,23.799999999999994 * _yScaling,);
    path.cubicTo(164 * _xScaling,23.399999999999995 * _yScaling,180.5 * _xScaling,36.699999999999996 * _yScaling,197.8 * _xScaling,33.099999999999994 * _yScaling,);
    path.cubicTo(221.3 * _xScaling,28.199999999999996 * _yScaling,236.70000000000002 * _xScaling,-0.30000000000000426 * _yScaling,260.7 * _xScaling,-7.105427357601002e-15 * _yScaling,);
    path.cubicTo(283.4 * _xScaling,0.2999999999999929 * _yScaling,318.09999999999997 * _xScaling,11.799999999999994 * _yScaling,318.4 * _xScaling,34.599999999999994 * _yScaling,);
    path.cubicTo(318.79999999999995 * _xScaling,68.19999999999999 * _yScaling,249.99999999999997 * _xScaling,85.19999999999999 * _yScaling,262.09999999999997 * _xScaling,116.5 * _yScaling,);
    path.cubicTo(276.99999999999994 * _xScaling,155 * _yScaling,350.5 * _xScaling,135.3 * _yScaling,371.09999999999997 * _xScaling,171 * _yScaling,);
    path.cubicTo(384.29999999999995 * _xScaling,194 * _yScaling,353.7 * _xScaling,223 * _yScaling,333.29999999999995 * _xScaling,239.8 * _yScaling,);
    path.cubicTo(313.4 * _xScaling,256.1 * _yScaling,285.9 * _xScaling,258.6 * _yScaling,260.4 * _xScaling,262 * _yScaling,);
    path.cubicTo(239.6 * _xScaling,264.7 * _yScaling,218.8 * _xScaling,261.5 * _yScaling,197.9 * _xScaling,257.7 * _yScaling,);
    path.cubicTo(197.9 * _xScaling,257.7 * _yScaling,197.9 * _xScaling,257.7 * _yScaling,197.9 * _xScaling,257.7 * _yScaling,);
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}