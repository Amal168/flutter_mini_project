import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/addevent.dart';

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
