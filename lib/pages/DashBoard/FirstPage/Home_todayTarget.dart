import 'package:aga/main.dart';
import 'package:aga/pages/DashBoard/Activity%20traker/Activity_traker.dart';
import 'package:aga/transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TodayTarget extends StatefulWidget {
  final Function? roadRouter;
  const TodayTarget(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<TodayTarget> createState() => _TodayTargetState();
}

class _TodayTargetState extends State<TodayTarget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color.fromARGB(255, 229, 241, 255), const Color.fromARGB(255, 216, 226, 255)], 
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(16)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Today Target', style: const TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: Color.fromARGB(255, 44, 44, 44))),
              const SizedBox(width: 20),
              Container(
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
                  child: const Text('Check', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, Transition(child: Tracker(widget.roadRouter)));
                    });
                  },
                )
              ),
          ],)
        ),
    ],);
  }
}