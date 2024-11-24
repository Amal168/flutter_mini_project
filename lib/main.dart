import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custemimage.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminOrganizer.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminhome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/auth/adminlogin.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/details.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/auth/splashscreen.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/auth/slash2.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealDetail.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealList.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/updateResult.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/assign/assignbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/addResult.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/eventResult.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/eventorgbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/auth/slash3.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentEvent/Apply.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentEvent/EventDetails.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentEvent/EventStudentlist.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentHome.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentResult/applyApeal.dart';
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
      home: Splash3(),
      // home: Eventdetails(),
      // home: Eventstudentlist(),
      // home: Apply(),
      // home: Assignbottum(),
      // home: Eventorgbottum(),
      // home: Eventresult(),
      // home: Addresult(),
      // home: CustemImagePicker(),
      // home: const ImagepickerEg(),
      // home: Appeallist(),
      // home: Appealdetail(),
      // home: Updateresult(),
      // home: Appealbottum(),
      // home: Applyapeal(),

    );
  }
}
