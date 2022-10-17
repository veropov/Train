import 'dart:collection';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Colors

const kBrandColor = BoxDecoration(gradient: LinearGradient(
  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
  begin: Alignment.topLeft, 
  end: Alignment.bottomRight
  )
);

const kSecondColor = BoxDecoration(gradient: LinearGradient(
  colors: [Color.fromARGB(255, 197, 139, 242), Color.fromARGB(76, 197, 139, 242)],
  begin: Alignment.topLeft, 
  end: Alignment.bottomRight
  )
);

const kBlack = Color.fromARGB(255, 44, 44, 44);
const kWhite = Colors.white;
const kGray100 = Color.fromARGB(255, 123, 111, 114);
const kGray60 = Color.fromARGB(255, 173, 164, 165);
const kGray30 = Color.fromARGB(255, 221, 218, 218);
const kBorder = Color.fromARGB(255, 247, 248, 248);

//Shadows

const shadowBlue = Color.fromARGB(80, 68, 143, 248);
const shadowPurple = Color.fromARGB(255, 197, 139, 242);
const shadowCard = Colors.white;

//Fonts

const kTextH1Bold = TextStyle(fontSize: 24, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins");
const kTextH2Bold = TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins");
const kTextTitle = TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins");
const kTextButton = TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w700, color: kWhite, fontFamily: "Poppins");
const kTextH3 = TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kBlack, fontFamily: "Poppins");
const kTextH2Medium = TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins");
const kTextMainBold = TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins");
const kTextMain = TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins");
const kTextMainBranch = TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins");

//Button




const floatButton = ShapeDecoration(
  shape: StadiumBorder(),
  gradient: LinearGradient(
  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 146, 166, 253)], 
  begin: Alignment.topLeft, 
  end: Alignment.bottomRight
  ),
);

DropdownMenuItem<String> buidMenuItem(String item) => DropdownMenuItem(
  value: item,
  child: Text(item, style: kTextMain)
);





class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

  bool SwitchBut = false;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        setState(() {
          SwitchBut = !SwitchBut;
        });
      },
      child: SizedBox(
        width: 50,
        height: 30,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                gradient: SwitchBut ? 
                LinearGradient(
                  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 149, 174, 254)], 
                  begin: Alignment.topLeft, 
                  end: Alignment.bottomRight
                )  :    
                LinearGradient(
                  colors: [Color.fromARGB(255, 224, 224, 224), Color.fromARGB(255, 196, 196, 196)], 
                    begin: Alignment.topLeft, 
                    end: Alignment.bottomRight
                ),
                borderRadius: BorderRadius.circular(100)
              ),
            ),
            SwitchBut ? Transform.translate(offset: Offset(10, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(20, 0, 0, 0),
                      blurRadius: 6,
                      offset: Offset(0,2)
                    )
                  ]
                ),
              child: SizedBox(
                width: 25,
                height: 25,
              ),
            ),
            ) : Transform.translate(offset: Offset(-10, 0), child: 
            Container(
                alignment: Alignment.centerLeft,
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(25, 0, 0, 0),
                      blurRadius: 6,
                      offset: Offset(0,2)
                    )
                  ]
                ),
              child: SizedBox(
                width: 25,
                height: 25,
              ),
            ),
          )],
        )
      ),
    );
  }
}

MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else { 
      return color; 
      }
  };

  return MaterialStateProperty.resolveWith(getColor);
}