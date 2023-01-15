import 'package:aga/appbar.dart';
import 'package:aga/constant.dart';
import 'package:flutter/material.dart';


class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

  bool onTap = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: App(
            titleApp: const Text(''), 
            appLeading: true, 
            appAction: true, 
            centerTitle: true, 
            Navigator: true
          )
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jumping Jack', style: kTextH3Bold),
                SizedBox(height: 5),
                Text('Easy | 390 Calories Burn', style: kTextMainGray),
                SizedBox(height: 30),
                Text('Descriptions', style: kTextH3Bold),
                SizedBox(height: 15),
                Wrap(
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: kTextMainGray,
                        children: [
                          TextSpan(text: 'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide. ', ),
                          TextSpan(text: onTap ? 'However, not everyone can perform jumps. It is forbidden to jump for those who have back or spine injuries. Such exercises are not recommended for people with cardiovascular diseases, with problems of ligaments, joints or varicose veins, as well as if they are overweight.' : null),
                        ]
                      )
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          onTap = true;
                        });
                      },
                      child: onTap ? Container() : Text('Read more...', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.blue)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}