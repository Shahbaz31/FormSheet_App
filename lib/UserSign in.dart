import 'package:flutter/material.dart';
import 'package:FormSheet_Viewer/form%20screen.dart';
import 'package:FormSheet_Viewer/g%20sheet.dart';
import 'package:FormSheet_Viewer/homescreen.dart';
import 'package:FormSheet_Viewer/Edit%20Screen.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final List<Map<String, String>> users = [
    {'email': 'shah', 'password': '123'},
    {'email': 'sirqarib', 'password': 'am@123'},
    // Add more user data here
  ];

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String errorMessage = '';

  void _login() {
    final enteredEmail = emailController.text;
    final enteredPassword = passwordController.text;

    bool isAuthenticated = false;

    for (var user in users) {
      if (user['email'] == enteredEmail && user['password'] == enteredPassword) {
        isAuthenticated = true;
        print('Login Sucessfully');
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> editscreen()));
       // Navigator.pop(context);
        break;
      }
    }

    if (isAuthenticated) {
      // Navigate to another screen or perform actions upon successful login
      setState(() {
        errorMessage = '';
      });
    } else {
      setState(() {
        errorMessage = 'Invalid Username or password';
      });
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
      title: Text('FormSheet Viewer' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
    ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 50,),
                  Container(
                    margin: EdgeInsets.only(right: 10,),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent
                    ),
                    child: Center(child: Text('Sign In',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,

                    ),)),
                  ),
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                          prefixIcon: Icon(Icons.person,color: Colors.white,),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurpleAccent),
                              borderRadius: BorderRadius.circular(10)
                          ),

                        )),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(controller:passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock,color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurpleAccent),
                              borderRadius: BorderRadius.circular(10)
                          ),

                        )),
                  ),
                ],
              ),
              SizedBox(height: 20.0),

              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(onPressed: _login, child: Text('Login',style: TextStyle(fontSize: 18),)),
              ),
              SizedBox(height: 8.0),
              Text(errorMessage, style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
 final txt= Text('Password',style: TextStyle(color: Colors.white),);