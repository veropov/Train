import 'package:flutter/material.dart';
import 'package:aga/constant.dart';
import 'package:aga/navBar.dart';
import 'package:flutter_svg/svg.dart';

class BoardFirstPage extends StatefulWidget {
  const BoardFirstPage({Key? key}) : super(key: key);

  @override
  State<BoardFirstPage> createState() => _BoardFirstPageState();
}

class _BoardFirstPageState extends State<BoardFirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      Scaffold(
        body: Column(),
        bottomNavigationBar: NavigatBar(),
        floatingActionButton: FloatButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}