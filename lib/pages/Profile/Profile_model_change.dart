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

List changes_2 = [
  name.toString(),
  age.toString(),
  weight.toString(),
  height.toString()
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

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
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
                          hintText: changes_2[i],
                        ),
                      ),
                    )
                  ),
                ]
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Color.fromARGB(255, 49, 49, 49),
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                    
                ),
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => Profile()));
                }, 
                child: Text('Back', style: TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins"))),
                SizedBox(width: 45),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Color.fromARGB(255, 49, 49, 49),
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                ),
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => Profile()));
                }, 
                child: Text('Save', style: TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")))
              ],
            ),
          ),
        ]
      )
    );
  }
}