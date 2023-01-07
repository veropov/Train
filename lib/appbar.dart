import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class App extends StatefulWidget {
    final Widget titleApp;
    final bool appLeading;
    final bool appAction;
    final bool centerTitle;
    final Object? Navigator;

  const App({
    Key? key,
    required this.titleApp,
    required this.appLeading,
    required this.appAction,
    required this.centerTitle,
    this.Navigator,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      title: widget.titleApp,
      titleTextStyle: TextStyle(),
      elevation: 0,
      centerTitle: widget.centerTitle,
      backgroundColor: Color.fromARGB(220, 255, 255, 255),
      leading: widget.appLeading == true ? Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color.fromARGB(121, 238, 238, 238), Color.fromARGB(134, 238, 233, 255)], 
                begin: Alignment.topCenter, 
                end: Alignment.bottomCenter
              ),
              borderRadius: BorderRadius.circular(8)
            )
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/Arrow - Left_light.svg', height: 16),
              splashRadius: 16,
              onPressed: () {
                widget.Navigator;
              }
            )
          )
        ],
      ) : null,
      actions: [Stack(
      alignment: Alignment.center,
      children: [
      widget.appAction == true ? Container(
          margin: const EdgeInsets.only(right: 20),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color.fromARGB(121, 238, 238, 238), Color.fromARGB(134, 238, 233, 255)], 
              begin: Alignment.topCenter, 
              end: Alignment.bottomCenter
            ),
            borderRadius: BorderRadius.circular(8)
          )
        ) : Container(),
        widget.appAction == true ? Container(
          margin: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon: SvgPicture.asset('assets/icons/Notification_light.svg', height: 16),
            splashRadius: 16,
            onPressed: () {}
          )
        ): Container()
      ])] 
    );
  }
}
