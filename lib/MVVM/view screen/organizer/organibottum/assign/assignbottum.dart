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
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             SizedBox(width: 70,),
                              const Text("Mohiniyatam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                iconSize: 35,
                                  color: Colors.black,
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete))
                            ],
                          ),
                          Row(
                            children: [
                              const Text("Date : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          const Text("13/07/2023 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text("time : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              const Text("10:00 am ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text("Stage : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  const Text("3 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                                
                              ),
                              SizedBox(width: 190,),
                              IconButton(
                                iconSize: 35,
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
