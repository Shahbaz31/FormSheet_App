import 'package:FormSheet_Viewer/About%20Us.dart';
import 'package:FormSheet_Viewer/preps.dart';
import 'package:flutter/material.dart';
import 'package:FormSheet_Viewer/UserSign%20in.dart';
import 'package:FormSheet_Viewer/form%20screen.dart';
import 'package:FormSheet_Viewer/g%20sheet.dart';
import 'package:FormSheet_Viewer/sign%20in%20screen.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
      drawer: Drawer(
        child: ListView(
          children: [
            drawerheader(),
            // UserAccountsDrawerHeader(
            //
            // //  currentAccountPictureSize:Size(72,72),
            // //   currentAccountPicture: CircleAvatar(
            // //     radius: 4,
            // //
            // //     backgroundImage: AssetImage(
            // //
            // //       'assets/artistic.jpg',),
            // //   ),
            // //   accountName: const Text('ARTISTIC MILLINERS'), accountEmail: const Text('DENIM COMPANY OF THE FUTURE'),
            // // ),
            ListTile(

              leading: const Image(
            width: 40,
            height: 40,
            image:  AssetImage('assets/form.png')),
              title: const Text(' Fill the Google Form'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const homescreen()));
    },
    ),


          ListTile(
                leading: const Image(
                width: 40,
                height: 40,
                image:  AssetImage('assets/sheet.png')),
                title: const Text(' View Google Sheets'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const googlesheet()));
            },

    ),
            ListTile(

              leading: const Image(
                  width: 50,
                  height: 38,

                  image:  AssetImage('assets/edt.png')),
              title: const Text(' Edit Google Sheets'),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoginPage()));},



            ),
            ListTile(

              leading: const Image(
                  width: 45,
                  height: 45,
                  image:  AssetImage('assets/share.png')),
              title: const Text(' Share with others'),



            ),
            ListTile(
              leading: const Image(
                  width: 50,
                  height: 50,
                  image:  AssetImage('assets/ab2.png')),
              title: const Text('About Us'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> about_us()));
              },

            ),
            ListTile(
              leading: const Image(
                  width: 45,
                  height: 45,
                  image:  AssetImage('assets/help.png')),
              title: const Text(' Help & Feedback'),

            ),

],
            ),



        ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 340,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(child: Text('ARTISTIC MILLINERS\n     Data Collection',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,),),),
              ),
            ),
          ),
          const SizedBox(height: 40,),

          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 250,
              height: 100,
              child: ElevatedButton(

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffA23BEC)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ))
                ),

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> forms()));
                  },

                  child:const Row(
                    children: [
                      Image(
                        alignment: Alignment.bottomLeft,
                          height: 50,
                          image: AssetImage('assets/form.png')),
                      Text('     Fill the Form',style: TextStyle(fontSize: 20),),

                    ],
                  ),

                   ),
            ),
          ),

          const SizedBox(height: 30,),

          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 250,
              height: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff66CD00	)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const googlesheet()));
                  },
                  child:
                  const Row(
                    children: [
                      Image(
                          alignment: Alignment.bottomLeft,
                          height: 50,
                          image: AssetImage('assets/sheet.png')),
                      Text('     View Sheets',style: TextStyle(fontSize: 20),),

                    ],
                  ),

              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
      Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 250,
          height: 100,
          child: ElevatedButton(

            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff6495ED)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ))
            ),

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoginPage()));
            },

            child:const Row(
              children: [
                Image(
                    alignment: Alignment.bottomLeft,
                    height: 43,
                    image: AssetImage('assets/edt.png')),
                Text('     Edit Sheets',style: TextStyle(fontSize: 20),),

              ],
            ),

          ),),
      ),
        ],
      ),

    );
  }
}

final appcolor = Color(0xff43BFC7);


class drawerheader extends StatelessWidget {
  const drawerheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(

        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 15),
          width: 20,
          alignment: Alignment.topCenter, // Center the content horizontally and vertically
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/artistic.jpg',),
              ),
              SizedBox(height: 15,),
              Text('  ARTISTIC MILLINERS',style: TextStyle(color: Colors.white,fontSize: 15),),
              SizedBox(height: 5,),
              Text('DENIM COMPANY OF THE FUTURE',style: TextStyle(color: Colors.white,fontSize: 15),),
            ],
          ),
        ),
      ),
    )
    ;
  }
}


