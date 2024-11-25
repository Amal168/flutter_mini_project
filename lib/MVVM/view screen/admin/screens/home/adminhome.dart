import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/eventBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/roganizerBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/studentBottum.dart';

class Adminhome extends StatefulWidget {
  const Adminhome({super.key});

  @override
  State<Adminhome> createState() => _AdminhomeState();
}

class _AdminhomeState extends State<Adminhome> {

  int myindex = 0;

  List<Widget> myList = [
    StudentBottom(),
    organizerBottom(),
    eventbutton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myList[myindex]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 10,
          child: BottomNavigationBar(
            backgroundColor: buttoncolor.c,
            selectedItemColor: buttoncolor.h,
            unselectedItemColor: Colors.white,
            onTap: (value) {
              setState(() {
                myindex = value;
              });
            },
            currentIndex: myindex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Student",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: "Organizer",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.event),
                label: "Event",
              ),
            ],
          ),
        ),
      ),
    );
  }
}



