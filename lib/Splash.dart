import 'dart:async';

import 'package:flutter/material.dart';
import 'package:FormSheet_Viewer/UserSign%20in.dart';
import 'package:FormSheet_Viewer/homescreen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> home()));
    });

  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Image(
          fit: BoxFit.cover,
          image:  AssetImage('assets/artistic.jpg'),
        ),
      ),
    );
  }
}
