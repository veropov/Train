import 'package:aga/constant.dart';
import 'package:aga/pages/Workout%20Tracker/Workout_item/Workout_sets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../Fullbody_workout.dart';

class UnlockSet extends StatefulWidget {
  final bool unlock;
  final int unclockSet;
  final Function? roadRouter;
  const UnlockSet(this.roadRouter, {
    required this.unlock,
    required this.unclockSet,
    Key? key
  }) : super(key: key);

  @override
  State<UnlockSet> createState() => _UnlockSetState();
}

class _UnlockSetState extends State<UnlockSet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.unlock ? const SizedBox(height: 0) : const SizedBox(height: 20),
        widget.unlock ? Sets(set: widget.unclockSet+1, widget.roadRouter) : Stack(
          children: [
            Sets(set: widget.unclockSet+1, widget.roadRouter),
            Container(
              alignment: Alignment.center,
              color: Color.fromARGB(210, 255, 255, 255),
              width: double.infinity,
              height: 420,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/Lock_light.svg', height: 36, color: kGray100),
                  Text('Finish ${widget.unclockSet} set', style: TextStyle(fontSize: 20, height: 1.5, fontWeight: FontWeight.w700, fontFamily: "Poppins", color: kGray100))
                ],
              )
            ),
          ],
        ),
      ],
    );
  }
}

class SetButton extends StatefulWidget {
  final bool unlock;
  const SetButton({
    required this.unlock,
    Key? key
  }) : super(key: key);

  @override
  State<SetButton> createState() => _SetButtonState();
}

class _SetButtonState extends State<SetButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.unlock ? Container() : Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: const CheckButton(
            onChange: '', 
            title: 'Start', 
            width: double.infinity, 
            height: 60,
            style: kTextButton
          )
        ) 
      ],
    );
  }
}