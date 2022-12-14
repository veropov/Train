import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aga/transition.dart';
import 'package:aga/pages/Sign up/Login_welcome.dart';

class LoginThirdPage extends StatefulWidget {
  const LoginThirdPage({Key? key}) : super(key: key);

  @override
  State<LoginThirdPage> createState() => _LoginThirdPageState();
}

class _LoginThirdPageState extends State<LoginThirdPage> {

  @override
  Widget build(BuildContext context) {

    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;

    final pictures = [
      'assets/images/Login_third_page.svg', 
      'assets/images/login_third_page2.svg', 
      'assets/images/login_third_page3.svg'
    ];

    final texts = [
      'I have a low amount of body fat\n and need / want to build more\n muscle',
      'I am “skinny fat”. look thin but have\n no shape. I want to add learn\n muscle in the right way',
      'I have over 20 lbs to lose. I want to\n drop all this fat and gain muscle\n mass'
    ];

    final textBolds = [
      'Improve Shape',
      'Lean & Tone',
      'Lose a Fat'
    ];

    Widget buildImage(dynamic picture, int index, String text, String textBold) => Stack(
      alignment: Alignment.center,
      children: [
      Container(
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(22),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(picture, height: heightScreen*0.36, fit: BoxFit.cover),
          Column(children: [
            Text(textBold, style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: "Poppins")),
            SizedBox(height: 20),
            Text(text, style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, color: Colors.white, fontFamily: "Poppins"), textAlign: TextAlign.center,)
          ]),
        ],
      )
    ],
  );
    
    return SafeArea(child: 
      Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text('What is your goal ?', style: kTextH2Bold),
                Text('It will help us to choose a best\n program for you', style: kTextMain, textAlign: TextAlign.center)
              ],)
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: heightScreen*0.59,
                enlargeCenterPage: true
              ),
              itemCount: pictures.length & texts.length & textBolds.length,
              itemBuilder: (context, index, realIndex) {

                final text = texts[index];
                final textBold = textBolds[index];
                final picture = pictures[index];
                return buildImage(picture, index, text, textBold);
              },
            ),
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
                  Navigator.push(context, Transition(child: LoginWelcome())
                  );
                },
                child: Text('Confirm', style: kTextButton),
              )
            )
        ],)
      )
    );
  }
}




