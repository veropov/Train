import 'dart:collection';
import 'package:aga/transition.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors
//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors
//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors//Colors

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

//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows
//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows
//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows//Shadows

const shadowBlue = Color.fromARGB(80, 68, 143, 248);
const shadowPurple = Color.fromARGB(255, 197, 139, 242);
const shadowCard = Colors.white;

//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts
//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts
//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts//Fonts

const kTextH1Bold = TextStyle(fontSize: 24, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins");
const kTextH2Bold = TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins");
const kTextTitle = TextStyle(fontSize: 18, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins");
const kTextButton = TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w700, color: kWhite, fontFamily: "Poppins");
const kTextH3 = TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400, color: kBlack, fontFamily: "Poppins");
const kTextH3Bold = TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600, color: kBlack, fontFamily: "Poppins");
const kTextH2Medium = TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, color: kGray100, fontFamily: "Poppins");
const kTextMainBold = TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins");
const kTextMain2 = TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kBlack);
const kTextMain = TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kBlack);
const kTextMainBranch = TextStyle(fontSize: 10, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100);

//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button
//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button
//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button

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

//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button
//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button
//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button//Button

class CheckButton extends StatefulWidget {
  final String title;
  final dynamic onChange;
  const CheckButton({
    required this.onChange,
    required this.title,
    Key? key
  }) : super(key: key);

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 32,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [const Color.fromARGB(255, 154, 195, 254), const Color.fromARGB(255, 149, 174, 254)], 
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(50)
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          onPrimary: Colors.white,
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(5)
        ),
        child: Text(widget.title, style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
        onPressed: () {
          widget.onChange;
        },
      )
    );
  }
}

//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button
//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button
//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button//Switch-Button

class SwitchButton extends StatefulWidget {
  double width;
  double heiht;

  SwitchButton({
    required this.width,
    required this.heiht,
    Key? key
  }) : super(key: key);

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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: widget.width,
            height: widget.heiht,
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
      ),
    );
  }
}

//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List
//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List
//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List//days List

final days = [
    'Mo',
    'Tu',
    'We',
    'Th',
    'Fr',
    'Sa',
    'Su'
];

//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar
//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar
//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar//AppBar

class App extends StatefulWidget {
    final Widget titleApp;
    final bool appLeading;
    final bool appAction;
    final bool centerTitle;

  const App({
    Key? key,
    required this.titleApp,
    required this.appLeading,
    required this.appAction,
    required this.centerTitle
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          title: widget.titleApp,
          titleTextStyle: TextStyle(),
          elevation: 0,
          centerTitle: widget.centerTitle,
          backgroundColor: Color.fromARGB(220, 255, 255, 255),
          leading: widget.appLeading == true ? Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color.fromARGB(121, 238, 238, 238), Color.fromARGB(134, 238, 233, 255)], 
                    begin: Alignment.topCenter, 
                    end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: IconButton(
                  icon: SvgPicture.asset('assets/icons/Arrow - Left_light.svg', height: 16),
                  splashRadius: 16,
                  onPressed: () {
                    Navigator.pop(context);
                  }
                )
              )
            ],
          ) : null,
        actions: [Stack(
        alignment: Alignment.center,
        children: [
        widget.appAction == true ? Container(
            margin: const EdgeInsets.only(right: 20),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color.fromARGB(121, 238, 238, 238), Color.fromARGB(134, 238, 233, 255)], 
                begin: Alignment.topCenter, 
                end: Alignment.bottomCenter
              ),
              borderRadius: BorderRadius.circular(8)
            )
          ) : Container(),
          widget.appAction == true ? Container(
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/Notification_light.svg', height: 16),
              splashRadius: 16,
              onPressed: () {}
            )
          ): Container()
        ])] 
      )
    );
  }
}


//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar
//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar
//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar//BottomBar

int currentIndex = 0; //При входе в приложение Навбар на первом (начальном) экране

class MainApp extends StatefulWidget {
  final int Ind;
  final Widget titleApp;
  final bool appAction;
  final bool appLeading;
  final bool centerTitle;
  final Widget currentInd;
  final Widget currentInd2;
  final Widget currentInd3;
  final Widget currentInd4;
  
  const MainApp({
    Key? key,
  required this.Ind,
  required this.titleApp,
  required this.appAction,
  required this.appLeading,
  required this.centerTitle,
  required this.currentInd,
  required this.currentInd2,
  required this.currentInd3,
  required this.currentInd4
  }) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  
  Widget build(BuildContext context) {

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

    widgetList() {
    if (currentIndex == 0) {return widget.currentInd;}
    if (currentIndex == 1) {return widget.currentInd2;}
    if (currentIndex == 3) {return widget.currentInd3;}
    if (currentIndex == 4) {return widget.currentInd4;}
  }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: currentIndex == widget.Ind ? Size.fromHeight(60) : Size.fromHeight(0),
        child: currentIndex == widget.Ind ? App(titleApp: widget.titleApp, appAction: widget.appAction, appLeading: widget.appLeading, centerTitle: widget.centerTitle,) : Container()
      ),
      body: widgetList(),
      bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        elevation: 0,
        height: 65,
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        indicatorShape: StadiumBorder()
      ),
      child: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 60,
        selectedIndex: currentIndex,
        onDestinationSelected: onTap,
        destinations: [
          NavigationDestination(
            label: '',
            icon: currentIndex == 0 ? SvgPicture.asset('assets/icons/Home_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Home_light.svg', height: 24, color: kGray100)
          ),
          NavigationDestination(
            label: '',
            icon: currentIndex == 1 ? SvgPicture.asset('assets/icons/Activity_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Activity_light.svg', height: 24, color: kGray100)
          ),
          SizedBox(width: 25),
          NavigationDestination(
            label: '',
            icon: currentIndex == 3 ? SvgPicture.asset('assets/icons/Camera_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Camera_light.svg', height: 24, color: kGray100)
          ),
          NavigationDestination(
            label: '',
            icon: currentIndex == 4 ? SvgPicture.asset('assets/icons/Profile_fill.svg', height: 26, color: shadowPurple) : SvgPicture.asset('assets/icons/Profile_light.svg', height: 24, color: kGray100)
          )
      ],)
    ),
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

Widget FloatButton() => SizedBox.fromSize(
  size: Size.square(60),
  child: FloatingActionButton(
  child: SvgPicture.asset('assets/icons/Search_light.svg', height: 20, color: Colors.white),
  elevation: 0,
  highlightElevation: 2,
  splashColor: Color.fromARGB(255, 56, 126, 255),
  backgroundColor: Color.fromARGB(255, 149, 174, 254),
  onPressed: () {},
  )
);

//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer
//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer
//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer//ScrollTimer

class ScrollTimer extends StatefulWidget {
  int x;
  int y;
  ScrollTimer({
    required this.x,
    required this.y,
    Key? key
  }) : super(key: key);

  @override
  State<ScrollTimer> createState() => _ScrollTimerState();
}

class _ScrollTimerState extends State<ScrollTimer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 35,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [const Color.fromARGB(255, 154, 195, 254), const Color.fromARGB(255, 149, 174, 254)], 
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(50)
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              onPrimary: Colors.white,
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.all(5)
            ),
            child: Text('+ 100', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
            onPressed: () {
              setState(() {
                widget.x = widget.x+1;
                widget.y = widget.x * 100;
              });
            },
          )
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          child: Text(widget.y.toString(), style: TextStyle(fontSize: 50, height: 1.5, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 115, 148, 255), fontFamily: "Poppins"))
        ),
        Container(
          width: 80,
          height: 35,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [const Color.fromARGB(255, 154, 195, 254), const Color.fromARGB(255, 149, 174, 254)], 
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(50)
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              onPrimary: Colors.white,
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.all(5)
            ),
            child: Text('- 100', style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
            onPressed: () {
              setState(() {
                widget.x = widget.x-1;
                if (widget.x<=0) {
                  widget.x=0;
                }
                widget.y = widget.x * 100;
              });
            },
          )
        ),
      ],
    );
  }
}