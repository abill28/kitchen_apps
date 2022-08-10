import 'package:flutter/material.dart';
import 'package:kitchen_app/comment_page.dart';
import 'package:kitchen_app/detailFood_page.dart';
import 'package:kitchen_app/forgotPassword_page.dart';
import 'package:kitchen_app/home.dart';
import 'package:kitchen_app/register_page.dart';
import 'login_page.dart';
import 'package:kitchen_app/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: CommentPage(),
    );
  }
}

