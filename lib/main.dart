import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminOrganizer.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/auth/adminlogin.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/details.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/auth/splashscreen.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/auth/slash2.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/assign/assignbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/eventorgbottum.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

late Size mq;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:Splashscreen() ,
      // home:  Adminlogin(),
      // home:  Adminhome(),
      // home:  Adminorganizer(),
      // home: Splash2(),
      // home: Assignbottum(),
      home: Eventorgbottum(),

    );
  }
}
