import 'package:aga/transition.dart';
import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/DashBoard/FirstPage/HomePage.dart';

class LoginWelcome extends StatelessWidget {
  const LoginWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final heightScreen = MediaQuery.of(context).size.height;
  final widthScreen = MediaQuery.of(context).size.width;

    return SafeArea(child: 
    Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 15),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                ClipPath(
                  clipper: TopCliper(),
                    child: Container(
                      alignment: Alignment.center,
                      height: heightScreen*0.36,
                      width: widthScreen*0.8,
                      decoration: BoxDecoration(gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                        begin: Alignment.topLeft, 
                        end: Alignment.bottomRight
                      )
                    ),
                  )
                ),
                SvgPicture.asset('assets/images/welcome_page.svg', height: heightScreen*0.4,)
              ],
            )
          ),
          SizedBox(height: 46),
          Text('Welcome, Stefani', style: kTextH2Bold),
          SizedBox(height: 5),
          Text('You are all set now, lets reach your\n goals together with us', style: kTextMain, textAlign: TextAlign.center),
          SizedBox(height: heightScreen*0.22),
          Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
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
                  primary: Colors.transparent,
                  onPrimary: kWhite,
                  shadowColor: Colors.transparent
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, Transition(child: Home()));
                },
                child: Text('Confirm', style: kTextButton),
              )
            )
      ],)
      )
    );
  }
}

class TopCliper extends CustomClipper <Path>{

  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 325;
    final double _yScaling = size.height / 350;
    path.lineTo(149.6 * _xScaling,350 * _yScaling);
    path.cubicTo(236.89999999999998 * _xScaling,350 * _yScaling,308 * _xScaling,318.3 * _yScaling,322 * _xScaling,229.8 * _yScaling,);
    path.cubicTo(336 * _xScaling,141.3 * _yScaling,214.8 * _xScaling,182.60000000000002 * _yScaling,217 * _xScaling,102.30000000000001 * _yScaling,);
    path.cubicTo(219.3 * _xScaling,22.10000000000001 * _yScaling,192.5 * _xScaling,-24.39999999999999 * _yScaling,119.3 * _xScaling,13.100000000000009 * _yScaling,);
    path.cubicTo(46.1 * _xScaling,50.9 * _yScaling,57.3 * _xScaling,130 * _yScaling,46.4 * _xScaling,166.8 * _yScaling,);
    path.cubicTo(25.3 * _xScaling,238.1 * _yScaling,-90.5 * _xScaling,350 * _yScaling,149.6 * _xScaling,350 * _yScaling,);
    path.cubicTo(149.6 * _xScaling,350 * _yScaling,149.6 * _xScaling,350 * _yScaling,149.6 * _xScaling,350 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}