import 'package:aga/pages/Profile/person_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:aga/constant.dart';

String name = 'Stefani Wong';

List changes = [
  'Full name',
  'Age',
  'Weight',
  'Height'
];

class TextFieldWidget extends StatefulWidget {
  final String nameChange;
  final String heightChange;
  final String weightChange;
  final String ageChange;
  final ValueChanged<String> onChanged;

  const TextFieldWidget({
    Key? key,
  required this.nameChange,
  required this.heightChange,
  required this.weightChange,
  required this.ageChange,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

List changes_2 = [
  name,
  '170',
  '55',
  '18'
];

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(children: [
          SizedBox(height: 30),
          for (var i = 0; i<changes.length; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text(changes[i], style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kBlack))),
              Container(
                height: 48,
                margin: EdgeInsets.only(top: 5, left: 30, right: 30, bottom: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: false,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: kTextMain,
                      hintText: changes_2[i]
                    ),
                  ),
                )
              ),
            ]
          )
        ],
      ),
    );
  }
}