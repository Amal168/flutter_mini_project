import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/adminhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/adminlogin.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/splashscreen.dart';
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
      home:  Adminhome(),
    );
  }
}
