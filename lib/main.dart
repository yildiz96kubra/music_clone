import 'package:flutter/material.dart';
import 'package:music_clone/constants.dart';
import 'package:music_clone/home.dart';
import 'package:music_clone/login_screen.dart';
import 'package:music_clone/mus%C4%B1c_login.dart';

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
        title: "Music App",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Home(),
        ));
  }
}
