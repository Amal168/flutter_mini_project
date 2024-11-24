import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/addevent.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/assign/editEvient.dart';

class Assignbottum extends StatefulWidget {
  const Assignbottum({
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
        title: const Text(
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
                  color: buttoncolor.g,
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
                              const Text(" "),
                              const Text(" "),
                              const Text("name"),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                  color: Colors.black,
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete))
                            ],
                          ),
                          const Text("Date : "),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("time : "),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Stage : "),
                              IconButton(
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => const Editevient()));
                                  },
                                  icon: const Icon(Icons.edit_note))
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
