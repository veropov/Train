import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/transition.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aga/pages/Profile/Profile_model_change.dart';
import 'package:aga/pages/Workout Tracker/Home_workout.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
        preferredSize: currentIndex == 4 ? Size.fromHeight(60) : Size.fromHeight(0),
        child: currentIndex == 4 ? App(titleApp: Text('Profile', style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))), appAction: true, appLeading: false, centerTitle: false) : Container()
      ),
        body: ProfilePerson(age: age.toString(), height: height.toString(), weight: weight.toString()), 
      )
    );
  }
}

class ProfilePerson extends StatefulWidget {
  final String height;
  final String weight;
  final String age;

  const ProfilePerson({
    Key? key,
  required this.height,
  required this.weight,
  required this.age,
  }) : super(key: key);

  @override
  State<ProfilePerson> createState() => _ProfilePersonState();
}

class _ProfilePersonState extends State<ProfilePerson> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 223, 229, 254)
                ),
                child: SvgPicture.asset('assets/images/Avatar.svg')
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kBlack), textAlign: TextAlign.start),
                  SizedBox(height: 5),
                  Text('Lose a Fat Program', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100), textAlign: TextAlign.start)
                ],
              ),
              SizedBox(width: 45),
              Container(
                height: 30,
                width: 82,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), 
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 154, 195, 254), Color.fromARGB(255, 146, 166, 253)], 
                        begin: Alignment.topLeft, 
                        end: Alignment.bottomRight
                    ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    onPrimary: kWhite,
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(context, Transition(child: TextFieldWidget(
                      ageChange: widget.age, 
                      weightChange: widget.weight, 
                      heightChange: widget.height, 
                      nameChange: name, 
                      onChanged: (value) => null)
                      )
                    );
                  },
                  child: Text('Edit', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins"))
                  )
              )],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),      
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 95,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                      const BoxShadow(
                        color: Color.fromARGB(10, 15, 5, 5),
                        blurRadius: 30,
                      )
                    ] 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.height, style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 126, 145, 253))),
                    Text('Height', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100))
                ],)
              ),
              SizedBox(width: 15),
              Container(
                width: 95,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                      const BoxShadow(
                        color: Color.fromARGB(10, 15, 5, 5),
                        blurRadius: 30,
                      )
                    ] 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.weight, style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 126, 145, 253))),
                    Text('Weight', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100))
                ],)
              ),
              SizedBox(width: 15),
              Container(
                width: 95,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                      const BoxShadow(
                        color: Color.fromARGB(10, 15, 5, 5),
                        blurRadius: 30,
                      )
                    ] 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.age, style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 126, 145, 253))),
                    Text('Age', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100))
                ],)
              ),
            ],
          ),
        ),
        Account(),
        Notification(),
        Other()
      ],),
    );
  }
}

Widget Account() => Container(
  margin: EdgeInsets.only(left: 30, right: 30, top: 25, bottom: 15),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: const Color.fromARGB(200, 255, 255, 255),
    boxShadow: [
        const BoxShadow(
          color: Color.fromARGB(15, 15, 5, 5),
          blurRadius: 30,
        )
      ] 
  ),
  child: InkWell(
    borderRadius: BorderRadius.circular(16),
    onTap: () {},
    highlightColor: const Color.fromARGB(255, 255, 255, 255),
    splashColor: const Color.fromARGB(255, 118, 103, 255),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 15),
          child: Text('Account', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins"))
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 2),
                      SvgPicture.asset('assets/icons/Profile_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                      SizedBox(width: 16),
                      Text('Personal Data', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kGray100, height: 20)
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Document_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                      SizedBox(width: 15),
                      Text('Achievement', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kGray100, height: 20)
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Graph_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                      SizedBox(width: 15),
                      Text('Activity History', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kGray100, height: 20)
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Chart_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                      SizedBox(width: 15),
                      Text('Workout Progress', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kGray100, height: 20)
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

Widget Notification() => Container(
  margin: EdgeInsets.symmetric(horizontal: 30),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: const Color.fromARGB(200, 255, 255, 255),
    boxShadow: [
        const BoxShadow(
          color: Color.fromARGB(15, 15, 5, 5),
          blurRadius: 30,
        )
      ] 
  ),
  child: Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Notification', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins")),
        SizedBox(height: 15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/icons/Notification_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                SizedBox(width: 15),
                Text('Pop-up Notification', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
              ],
            ),
            SwitchButton()
          ],
        ),
      ],
    ),
  ),
);

Widget Other() => Container(
  margin: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 30),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: const Color.fromARGB(200, 255, 255, 255),
    boxShadow: [
        const BoxShadow(
          color: Color.fromARGB(15, 15, 5, 5),
          blurRadius: 30,
        )
      ] 
  ),
  child: InkWell(
    borderRadius: BorderRadius.circular(16),
    onTap: () {},
    highlightColor: const Color.fromARGB(255, 255, 255, 255),
    splashColor: const Color.fromARGB(255, 118, 103, 255),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 15),
          child: Text('Other', style: TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w600, fontFamily: "Poppins"))
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Message_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                      SizedBox(width: 15),
                      Text('Contact Us', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kGray100, height: 20)
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Shield Done_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                      SizedBox(width: 15),
                      Text('Privacy Policy', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kGray100, height: 20)
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Setting_light.svg', color: Color.fromARGB(255, 126, 145, 253), height: 16),
                      SizedBox(width: 15),
                      Text('Settings', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: kGray100)),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/Arrow - Right 2_light.svg', color: kGray100, height: 20)
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);