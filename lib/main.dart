import 'package:flutter/material.dart';
import 'package:FormSheet_Viewer/Edit%20Screen.dart';
import 'package:FormSheet_Viewer/Splash.dart';
import 'package:FormSheet_Viewer/homescreen.dart';
import 'package:FormSheet_Viewer/prep.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FormSheet Viewer',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: splash(),
    );
  }
}



