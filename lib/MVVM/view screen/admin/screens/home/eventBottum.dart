import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/addevent.dart';

class eventbutton extends StatefulWidget {
  // String name;
  // String Date;
  // String StageNo;
  // String Time;

  const eventbutton({
    super.key,
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
        title: const Text(
          "Event",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: buttoncolor.g,
                  child: ListTile(
                    textColor: Colors.white,
                    title: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 90,),
                               Text("Mohiniyattam",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                               SizedBox(width: 20,),
                              IconButton(
                                iconSize: 35,
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete,
                                      color: Colors.black))
                            ],
                          ),
                          const Text("Date : 7/12/2023",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          const Text("time : 10:00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          const Text("Stage : 3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttoncolor.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const Addevent()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
