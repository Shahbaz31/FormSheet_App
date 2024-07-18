// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//   Future<void> login() async {
//     final String apiUrl = 'https://jsonplaceholder.typicode.com/posts'; // Replace with your API URL
//
//     final Map<String, String> data = {
//       'email': emailController.text,
//       'password': passwordController.text,
//     // };
//
//     final http.Response response = await http.post(Uri.parse(apiUrl), body: data);
//
//     if (response.statusCode == 201) {
//       final Map<String, dynamic> responseData = jsonDecode(response.body);
//       print('Login successful: ${responseData['id']}');
//     } else {
//       print('Login failed: ${response.statusCode}');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 hintText: 'Email',
//               ),
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 hintText: 'Password',
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: login,
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() => runApp(MaterialApp(home: LoginPage()));
