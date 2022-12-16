import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActivityProgress extends StatefulWidget {
  const ActivityProgress({Key? key}) : super(key: key);

  @override
  State<ActivityProgress> createState() => _ActivityProgressState();
}

class _ActivityProgressState extends State<ActivityProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(

          )
        ],
      )
    );
  }
}