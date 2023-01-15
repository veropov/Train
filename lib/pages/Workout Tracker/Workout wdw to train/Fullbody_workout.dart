import 'package:aga/appbar.dart';
import 'package:aga/bottom_navigation.dart';
import 'package:aga/constant.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_difficulity.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_needs_item.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_sets.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Home_workout.dart';
import '../Workout_item/Workout_schedule.dart';
import '../Workout_item/Workout_unlock_Set.dart';


bool fullFinishSet1 = false;
bool fullFinishSet2 = false;
bool fullFinishSet3 = false;


class Fullbody_workout extends StatefulWidget {
  final Function? roadRouter;
  const Fullbody_workout(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<Fullbody_workout> createState() => _Fullbody_workoutState();
}

class _Fullbody_workoutState extends State<Fullbody_workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: const App(
          titleApp: Text(''),
          appAction: true,
          appLeading: true,
          centerTitle: true,
          Navigator: true,
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: 340,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: kBrandMain
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                      Transform.translate(offset: Offset(0, 70), child: Container(
                          width: 280,
                          height: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                            gradient: kBrandColor
                          )
                        )),
                        SvgPicture.asset(wdwPicture[0], height: 300),
                      ],
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 300),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                      color: Color.fromARGB(255, 255, 255, 255)
                    ),
                    child: Column(
                      children: [
                        TitleWorkout(title: wdwTitle[0], subTitle: '${wdwSubTitle[0]} | 320 Calories Burn'),
                        //Проверка даты тренировок//Проверка даты тренировок//Проверка даты тренировок
                        const SizedBox(height: 20),
                        Schedule_check(time: 10, widget.roadRouter),
                        const SizedBox(height: 15),
                        //Выбор сложности тренировок//Выбор сложности тренировок//Выбор сложности тренировок
                        Difficulity_check(hard: 'Beginner', widget.roadRouter),
                        const SizedBox(height: 30),
                        //Кол-во тренировочных предметов//Кол-во тренировочных предметов//Кол-во тренировочных предметов
                        NeedItem(widget.roadRouter),
                        const SizedBox(height: 30),
                        //Виды упражнений//Виды упражнений//Виды упражнений
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('Exercises', style: kTextH3Bold),
                              const Text('3 Sets', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kGray30))
                          ],),
                        ),
                        const SizedBox(height: 20),
                        Sets(set: 1, widget.roadRouter),
                        SetButton(unlock: fullFinishSet1),
                        //Закончили первый сет//Закончили первый сет//Закончили первый сет
                        fullFinishSet2 ? SizedBox(height: 20) : SizedBox(height: 0),
                        UnlockSet(widget.roadRouter, unclockSet: 1, unlock: fullFinishSet1),
                        fullFinishSet1 ? SetButton(unlock: fullFinishSet2) : Container(),
                        //Закончили второй сет//Закончили второй сет//Закончили второй сет
                        fullFinishSet2 ? SizedBox(height: 20) : SizedBox(height: 0),
                        UnlockSet(widget.roadRouter, unclockSet: 2, unlock: fullFinishSet2),
                        fullFinishSet2 ? SetButton(unlock: fullFinishSet3) : Container(),
                        //Закончили третий сет//Закончили третий сет//Закончили третий сет
                        const SizedBox(height: 50)
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBottomBar(widget.roadRouter),
      floatingActionButton: FloatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}


