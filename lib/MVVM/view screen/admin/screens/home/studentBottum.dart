import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/details.dart';

class StudentBottom extends StatelessWidget {
  final List<Map<String, dynamic>> studentList = const [
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Uther",
      "idname": "001",
      "Department": "Kuchipodi",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Chothy",
      "idname": "002",
      "Department": "Barathanatyam",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Avinash",
      "idname": "003",
      "Department": "Kolkalli",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Ullash",
      "idname": "004",
      "Department": "Daphumutu",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Ganash",
      "idname": "005",
      "Department": "Mohiniyatam",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "RR",
      "idname": "006",
      "Department": "Kuchipudy",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Upper",
      "idname": "007",
      "Department": "Barathanyatiam",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Sajan",
      "idname": "008",
      "Department": "kolkalli",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Odian",
      "idname": "009",
      "Department":"Mohiniyatam",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    },
    {
      "image":
          "https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?rs=1&pid=ImgDetMain",
      "name": "Goban",
      "idname": "010",
      "Department": "Daphumutu",
      "Phone Number": "5457425",
      "Location": "vsgxvgv"
    }
  ];

  const StudentBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Students List",
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
