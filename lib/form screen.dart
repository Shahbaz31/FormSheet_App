import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:FormSheet_Viewer/homescreen.dart';


class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft:Radius.circular(30) )
              ),
              backgroundColor: Color(0xff5F9EA0	),
            title: Text('FormSheet Viewer ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22))

          ),
          body: Stack(
            children: [
              InAppWebView(
                initialUrlRequest: URLRequest(
                    url: Uri.parse('https://docs.google.com/forms/d/e/1FAIpQLSdFrFmAXOVK-NVSKoRiY37PnAYIa9be8uWPhIVqZUuIeoRw4Q/viewform?embedded=true" width="640" height="1709" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>'),
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
              _progress < 1 ? Container(
                child: LinearProgressIndicator(
                  value: _progress,
                ),
              ):SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}