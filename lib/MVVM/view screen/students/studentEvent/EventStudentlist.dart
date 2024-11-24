
import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custemimage.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/addResult.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/resuitEventdetails.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentEvent/EventDetails.dart';

class Eventstudentlist extends StatefulWidget {
  const Eventstudentlist({super.key});

  @override
  State<Eventstudentlist> createState() => _EventstudentlistState();
}

class _EventstudentlistState extends State<Eventstudentlist> {
  List<Map<String, dynamic>> eventlist = [
    {
      "image":
          "https://thecompoundadl.com.au/wp-content/uploads/2021/09/placeholder-79.jpg",
      "name": "Mohiniattam"
    },
    {
      "image":
          "https://thecompoundadl.com.au/wp-content/uploads/2021/09/placeholder-79.jpg",
      "name": "Kolkali"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Event",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: eventlist.length,
                itemBuilder: (context, index) {
                  final event = eventlist[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Eventdetails(name: event["name"])));
                      },
                      child: Card(
                        child: ListTile(
                          // leading: Image.network(event["image"]),
                          leading: Image.asset("assest/photo 3.png"),
                          title: Text(event["name"]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
