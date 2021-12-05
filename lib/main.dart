// kiran kshirsagar

import 'package:flutter/material.dart';
import 'Pages/Info.dart';
import 'Pages/Login_page.dart';
import 'Pages/Home.dart';
import 'Pages/doctorList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "/Home": (context) => Home(),
        "/DoctorList": (context) => DoctorList(),
        "/Information": (context) => Information(),
        //"/": (context) => TextPage(),
      },
    );
  }
}
