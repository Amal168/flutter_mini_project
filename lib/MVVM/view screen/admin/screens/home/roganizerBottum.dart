import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/details.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminOrganizer.dart';

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

  const organizerBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Organizer List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          final student = studentList[index];
          return Card(
            margin: const EdgeInsets.all(8),
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
              leading: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Adminorganizer()));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(student["image"]),
                ),
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
