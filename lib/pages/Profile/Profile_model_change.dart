import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:aga/constant.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

bool personChange = true;
String nameChange = '';
String heightChange = '';
String weightChange = '';
String ageChange = '';
ValueChanged<String> onChanged = (value) => null;

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(children: [
          Text(nameChange),
          Container(
            height: 48,
            margin: EdgeInsets.only(top: 15, left: 30, right: 30),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: kBorder),
            child: TextFormField(
              obscureText: false,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: nameChange,
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