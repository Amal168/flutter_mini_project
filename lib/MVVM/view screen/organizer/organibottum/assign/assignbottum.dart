import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/addevent.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/assign/editEvient.dart';

class Assignbottum extends StatefulWidget {
  Assignbottum({
    super.key,
  });

  @override
  State<Assignbottum> createState() => _AssignbottumState();
}

class _AssignbottumState extends State<Assignbottum> {
  List eventlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        excludeHeaderSemantics: false,
        title: Text(
          " ",
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
                  color: buttoncolor.f,
                  child: ListTile(
                    textColor: Colors.white,
                    title: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(" "),
                              Text(" "),
                              Text("name"),
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: Icon(Icons.delete))
                            ],
                          ),
                          Text("Date : "),
                          SizedBox(
                            height: 10,
                          ),
                          Text("time : "),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Stage : "),
                              IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Editevient()));
                                  },
                                  icon: Icon(Icons.edit_note))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
