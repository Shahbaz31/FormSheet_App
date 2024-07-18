import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:FormSheet_Viewer/UserSign%20in.dart';
import 'package:FormSheet_Viewer/form%20screen.dart';
import 'package:FormSheet_Viewer/homescreen.dart';
import 'package:FormSheet_Viewer/prep.dart';
import 'package:FormSheet_Viewer/sign%20in%20screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class googlesheet extends StatefulWidget {
  const googlesheet({super.key});

  @override
  State<googlesheet> createState() => _googlesheetState();
}

class _googlesheetState extends State<googlesheet> {

  double _progress = 0;
  late InAppWebViewController  inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{

        var isLastPage = await inAppWebViewController.canGoBack();

        if(isLastPage){
          inAppWebViewController.goBack();
          return false;
        }

        return true;
      },

      child: SafeArea(
        child: Scaffold(
          backgroundColor: appcolor ,
          appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 60,
            elevation: 100,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft:Radius.circular(30) )
            ),
            backgroundColor: const Color(0xff5F9EA0	),
            title: const Text('FormSheet Viewer' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
          ),
          body: Stack(
            children: [

              InAppWebView(
                initialUrlRequest: URLRequest(
                    url: Uri.parse("https://docs.google.com/spreadsheets/d/e/2PACX-1vTB1j8zDhZa9_rqV0y-e6YAQ0PGlYU0eEWWXOn6dYM693EW15qjCu_FrXKAkq6JF4-PrxA5eOUneIyg/pubhtml")
                ),
                onWebViewCreated: (InAppWebViewController controller){
                  inAppWebViewController = controller;
                },
                onProgressChanged: (InAppWebViewController controller , int progress){
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),

              (
              _progress < 1 ? Container(
                child: LinearProgressIndicator(
                  value: _progress,
                ),
              ):const SizedBox()
              ),
              const button(),


              
            ],
          ),
        ),
      ),
      );

  }
}



class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoginPage()));
        },
        child: Container(
          width: 55,
          height: 55,
          margin: const EdgeInsets.only(bottom: 50,right: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          child:  const Center(

            child: FaIcon(
              FontAwesomeIcons.edit,
            color: Colors.black,
            size: 30,),
          ),
        ),
      ),
    );
  }
}
