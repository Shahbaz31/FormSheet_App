import 'package:flutter/material.dart';
import 'package:FormSheet_Viewer/homescreen.dart';
import 'package:url_launcher/url_launcher.dart';

class editscreen extends StatefulWidget {
  const editscreen({super.key});

  @override
  State<editscreen> createState() => _editscreenState();
}

class _editscreenState extends State<editscreen> {

  void _launchURL() async {
    const url = 'https://docs.google.com/spreadsheets/d/1cVODlWyM6ixIXHmt-pNKc8hNZwzFK-BZCMdEfYM6Big/edit'; // Replace with the desired URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


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
      body:
         Container(
           child: Column(children: [

             SizedBox(height: 150,),
             Container(

                 child: Text('Tab here to Edit Sheets',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),)),
             SizedBox(height: 50,),

             Center(
               child: SizedBox(
                 width: 200,
                 height: 100,
                 child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                         foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                         ))
                     ),
                     onPressed: (){
                       _launchURL();
                     },
                     child: Text('Edit Sheet',style: TextStyle(fontSize: 18,color: Colors.white),)
                 ),
               ),
             ),

           ],) ,
         )




    );
  }
}
