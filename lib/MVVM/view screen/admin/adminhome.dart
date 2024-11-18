import 'package:flutter/material.dart';

class Adminhome extends StatefulWidget {
  Adminhome({super.key});

  @override
  State<Adminhome> createState() => _AdminhomeState();
}

class _AdminhomeState extends State<Adminhome> {
  int myindex = 0;
  List myList = [
    studentbottum(),
    studentbottum(),
    studentbottum(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myList[myindex]),
      bottomNavigationBar: Card(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
        elevation: 10,
        child: BottomNavigationBar(

            // type: BottomNavigationBarType.shifting,

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
                label: "Student",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Organizer"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Event")
            ]),
      ),
    );
  }
}

class studentbottum extends StatefulWidget {
  final List<Map<String, dynamic>> studentList = [
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Uther",
      "idname": "001"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Chothy",
      "idname": "002"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Avinash",
      "idname": "003"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Ullash",
      "idname": "004"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Ganash",
      "idname": "005"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "RR",
      "idname": "005"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Upper",
      "idname": "007"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Sajan",
      "idname": "008"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Odian",
      "idname": "009"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Goban",
      "idname": "010"
    }
  ];
  studentbottum({super.key});

  @override
  State<studentbottum> createState() => _studentbottumState();
}

class _studentbottumState extends State<studentbottum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Students List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ListView.builder(itemBuilder: (context, index) {
              final student = widget.studentList[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(student["image"]),
                  ),
                  title: Text(student["name"]),
                  subtitle: Text(student["idname"]),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
