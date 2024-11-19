import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/addevent.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/details.dart';
import 'package:get/get.dart';

class Adminhome extends StatefulWidget {
  Adminhome({super.key});

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
      bottomNavigationBar: Card(
        elevation: 10,
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
    );
  }
}

class StudentBottom extends StatelessWidget {
  final List<Map<String, dynamic>> studentList = const [
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Uther",
      "idname": "001",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Chothy",
      "idname": "002",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Avinash",
      "idname": "003",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Ullash",
      "idname": "004",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Ganash",
      "idname": "005",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "RR",
      "idname": "006",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Upper",
      "idname": "007",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Sajan",
      "idname": "008",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Odian",
      "idname": "009",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Goban",
      "idname": "010",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    }
  ];

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
      body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          final student = studentList[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => studentDetails(
                            image: student["image"],
                            name: student["name"],
                            id: student["idname"],
                            department: student["Department"],
                            phnumber: student["Phone Number"],
                            location: student["Location"])));
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(student["image"]),
              ),
              title: Text(student["name"]),
              subtitle: Text(' ${student["idname"]}'),
            ),
          );
        },
      ),
    );
  }
}

class organizerBottom extends StatelessWidget {
  final List<Map<String, dynamic>> studentList = const [
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Uther",
      "idname": "001",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Chothy",
      "idname": "002",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Avinash",
      "idname": "003",
      "Department": "Computer Science",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Organizer List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          final student = studentList[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => organiserDetails(
                              image: student["image"],
                              name: student["name"],
                            )));
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(student["image"]),
              ),
              title: Text(student["name"]),
              subtitle: Text(' ${student["idname"]}'),
            ),
          );
        },
      ),
    );
  }
}

class eventbutton extends StatefulWidget {
  // String name;
  // String Date;
  // String StageNo;
  // String Time;

  eventbutton(
      {super.key,
      // required this.name,
      // required this.Date,
      // required this.StageNo,
      // required this.Time,
      });

  @override
  State<eventbutton> createState() => _eventbuttonState();
}

class _eventbuttonState extends State<eventbutton> {
  List eventlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Event",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(" "),
                            Text("name"),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete))
                          ],
                        ),
                        Text("Date : "),
                        Text("time : "),
                        Text("Stage : "),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        shape: Border(),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => Addevent()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
