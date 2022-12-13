import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:aga/constant.dart';

String name = 'Stefani Wong';

class TextFieldWidget extends StatefulWidget {
  final bool personChange;
  final String nameChange;
  final String heightChange;
  final String weightChange;
  final String ageChange;
  final ValueChanged<String> onChanged;

  const TextFieldWidget({
    Key? key,
  required this.personChange,
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
        body: Column(children: [
          Container(
            height: 48,
            margin: EdgeInsets.only(top: 15, left: 30, right: 30),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
            child: TextFormField(
              obscureText: false,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
                hintStyle: kTextMain
              ),
            )
          ),
        ],
      ),
    );
  }
}