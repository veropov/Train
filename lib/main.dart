// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:aga/icons/person_icons.dart';



void main() => runApp(image());

class nextWidget extends StatelessWidget {
  const nextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnestX',
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 102, 117, 184), Color.fromARGB(255, 87, 41, 194)])
            ),
            child: Center (
              child: RichText(text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 22),
                    // ignore: prefer_const_literals_to_create_immutables
                  children: <TextSpan>[
                    TextSpan(text: 'Everybody ', style: TextStyle(color: Color.fromARGB(255, 204, 204, 204), fontStyle: FontStyle.italic)),
                    TextSpan(text: 'can '),
                    TextSpan(text: 'train')
                    ],
                  ),
                )
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {  },
            child: Text('next', 
            style: TextStyle(color: Colors.blue)
            ),
            backgroundColor: Colors.white,
          ),
      ),
    );
  }
}

class image extends StatelessWidget {
  const image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(70, 30, 30, 30),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(1,1),
                )
              ],
              color: Color.fromARGB(255, 206, 165, 42),
            ),
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(top: 20),
            child: IconButton(
              icon: Icon(
                PersonIcons.message, size: 30, color: Colors.white),
                onPressed: () {},
                iconSize: 50,
            ),
          ),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color.fromARGB(255, 102, 117, 184), Color.fromARGB(255, 87, 41, 194)])
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('add')),
      )
    );
  }
}

