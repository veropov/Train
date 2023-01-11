import 'package:aga/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NeedItem extends StatefulWidget {
  const NeedItem({Key? key}) : super(key: key);

  @override
  State<NeedItem> createState() => _NeedItemState();
}

class _NeedItemState extends State<NeedItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('You’ll Need', style: kTextH3Bold),
            Text('5 item', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kGray30))
        ],)
      ],
    );
  }
}