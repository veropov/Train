import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldWidget extends StatefulWidget {
  final bool person;
  final String name;
  final String height;
  final String weight;
  final String age;
  final ValueChanged<String> onChanged;

  const TextFieldWidget({
    Key? key,
  required this.person,
  required this.name,
  required this.height,
  required this.weight,
  required this.age,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
      return Column(children: [
        Text(widget.name)
      ],
    );
  }
}