import 'package:FormSheet_Viewer/homescreen.dart';
import 'package:flutter/material.dart';


class about_us extends StatelessWidget {
  const about_us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor ,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft:Radius.circular(30) )
        ),
        backgroundColor: Color(0xff5F9EA0	),
        title: const Text('FormSheet Viewer ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),

      ),
      body: Container(
          margin: EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Text('Welcome to the App,\nDeveloped by Students of FAST National University, containing team leading Shehbaz Ahmed with  Uzair Khan ,Qamar Rasheed, Ghulam Mohiuddin. Together, we have engineered an app that offers  features, designed to streamline data management needs. With the app, you can effortlessly fill out forms, ensuring efficient data collection. you can view google sheets. We understand the importance of security and control, which is why we have incorporated an admin panel, granting exclusive access to the edit sheets feature. This ensures that your data remains in capable hands, providing peace of mind. Our team hails from the prestigious FAST NUCES University, and our work has been nurtured under the watchful eye of our experienced Supervisor, Engineer Sir Qarib. His guidance has been invaluable throughout this project, ensuring the app meets the highest standards. \n\nEnjoy The App !')),
    );
  }
}
