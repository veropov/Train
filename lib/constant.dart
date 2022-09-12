import 'package:flutter/material.dart';

//Colors

const kBrandColor = BoxDecoration(gradient: LinearGradient(
  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(76, 149, 173, 254)], 
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

const kBlack = Color.fromARGB(255, 29, 22, 23);
const kWhite = Colors.white;
const kGray100 = Color.fromARGB(255, 123, 111, 114);
const kGray60 = Color.fromARGB(255, 173, 164, 165);
const kGray30 = Color.fromARGB(255, 221, 218, 218);
const kBorder = Color.fromARGB(255, 247, 248, 248);

//Shadows

const shadowBlue = Color.fromARGB(255, 154, 195, 254);
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

//Button

const floatButton = ShapeDecoration(
  shape: StadiumBorder(),
  gradient: LinearGradient(
  colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 146, 166, 253)], 
  begin: Alignment.topLeft, 
  end: Alignment.bottomRight
  ),
);