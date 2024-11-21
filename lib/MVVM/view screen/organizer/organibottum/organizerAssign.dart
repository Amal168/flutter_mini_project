import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/eventBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/roganizerBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/studentBottum.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/assign/assignbottum.dart';

class Organizerassign extends StatefulWidget {
  Organizerassign({super.key});

  @override
  State<Organizerassign> createState() => _OrganizerassignState();
}

class _OrganizerassignState extends State<Organizerassign> {

  int myindex = 0;

  List<Widget> myList = [
  Assignbottum(),
  //  Center(child: Text("Assigned"),),   
   Center(child: Text("Event"),),   
   Center(child: Text("Appel"),),   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myList[myindex]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: BottomNavigationBar(
            backgroundColor: Colors.orange,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.deepOrangeAccent,
            onTap: (value) {
              setState(() {
                myindex = value;
              });
            },
            currentIndex: myindex,
            items: [
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



