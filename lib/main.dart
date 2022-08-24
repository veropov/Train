// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() => runApp(nextWidget());

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
                colors: [Color.fromARGB(255, 134, 184, 224), Color.fromARGB(255, 71, 31, 250)])
            ),
            child: Center (
              child: RichText(text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 22),
                    // ignore: prefer_const_literals_to_create_immutables
                  children: <TextSpan>[
                    TextSpan(text: 'Everybody ', style: TextStyle(color: Color.fromARGB(255, 231, 65, 65), fontStyle: FontStyle.italic)),
                    TextSpan(text: 'can '),
                    TextSpan(text: 'train')
                    ],
                  ),
                )
              )
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
