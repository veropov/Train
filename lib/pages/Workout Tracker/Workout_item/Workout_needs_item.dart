import 'package:aga/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NeedItem extends StatefulWidget {
  final Function? roadRouter;
  const NeedItem(this.roadRouter, {Key? key}) : super(key: key);

  @override
  State<NeedItem> createState() => _NeedItemState();
}

class _NeedItemState extends State<NeedItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('You’ll Need', style: kTextH3Bold),
              Text('3 item', style: TextStyle(fontSize: 12, height: 1.5, fontWeight: FontWeight.w500, fontFamily: "Poppins", color: kGray30))
          ],),
          SizedBox(height: 15),
          CarouselSlider.builder(
            itemCount: itemsList.length, 
            itemBuilder: ((context, index, realIndex) => itemsList[index]), 
            options: CarouselOptions(
              height: 160,
              viewportFraction: 0.48,
              enableInfiniteScroll: false,
              padEnds: false,
            )
          )
        ],
      ),
    );
  }
}

List itemsPicture = [
  SvgPicture.asset('assets/images/barbel.svg'),
  SvgPicture.asset('assets/images/skipping-rope.svg'),
  SvgPicture.asset('assets/images/water-bottle.svg'),
];

List itemsText = [
  Text('Barbell', style: kTextMain),
  Text('Skipping Rope', style: kTextMain),
  Text('Bottle 1 Liters', style: kTextMain)
];

List itemsList = [
  Items(itemsPicture[0], itemsText[0]),
  Items(itemsPicture[1], itemsText[1]),
  Items(itemsPicture[2], itemsText[2]),
];

Widget Items(itemsPicture, itemsText) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 243, 243),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: EdgeInsets.all(25),
        child: itemsPicture
      )
    ),
    SizedBox(height: 10),
    itemsText
],);

