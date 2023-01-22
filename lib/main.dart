import 'dart:async';
import 'package:flutter/material.dart';

bool visible = true;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  bool visible = true;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build (BuildContext context){

    final timer = Timer(const Duration(seconds: 3), (){setState(() {
      visible^=true; print(visible);
    });});

    return MaterialApp(
      home: Scaffold(
        body:Column(
          children:[
          Visibility(
          maintainSize: true,
          maintainState: true,
          maintainAnimation: true,
          maintainInteractivity: true,
          maintainSemantics: true,
          visible: visible,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),),
          TextButton(onPressed: (){setState(() {
            // visible^=true;
            //
            // print(visible);
            timer;
          });

            }, child: Text('Dugme')),
          ],

      ),
      ),


    );

  }
}

// class Task {
//
//   Task ();
//
//   void toggleDone() {
//     visible ^= true;
//   }
//
// }