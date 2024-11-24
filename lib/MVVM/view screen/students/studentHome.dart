import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/eventBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/roganizerBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/studentBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/assign/assignbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/eventorgbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentEvent/EventStudentlist.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentResult/Resultstudentlist.dart';

class Studenthome extends StatefulWidget {
  const Studenthome({super.key});

  @override
  State<Studenthome> createState() => _StudenthomeState();
}

class _StudenthomeState extends State<Studenthome> {

  int myindex = 0;

  List<Widget> myList = [
  Eventstudentlist(),
  Resultstudentlist(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myList[myindex]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: BottomNavigationBar(
            backgroundColor: buttoncolor.f,
            selectedItemColor: buttoncolor.h,
            unselectedItemColor:Colors.white,
            onTap: (value) {
              setState(() {
                myindex = value;
              });
            },
            currentIndex: myindex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Event",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: "Result",
              ),
              ],
          ),
        ),
      ),
    );
  }
}



