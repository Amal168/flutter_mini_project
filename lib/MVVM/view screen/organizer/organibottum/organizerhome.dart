import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/eventBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/roganizerBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/studentBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/assign/assignbottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/eventorgbottum.dart';

class Organizerassign extends StatefulWidget {
  const Organizerassign({super.key});

  @override
  State<Organizerassign> createState() => _OrganizerassignState();
}

class _OrganizerassignState extends State<Organizerassign> {

  int myindex = 0;

  List<Widget> myList = [
  Assignbottum(),
  //  Center(child: Text("Assigned"),), 
  Eventorgbottum(),
  //  const Center(child: Text("Event"),),   
    // Center(child: Text("Appel"),), 
    Appealbottum() 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myList[myindex]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: BottomNavigationBar(
            backgroundColor: buttoncolor.f,
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
                label: "Assigned",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: "Event",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.event),
                label: "Appeal",
              ),
            ],
          ),
        ),
      ),
    );
  }
}



