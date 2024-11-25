import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:get/get.dart';

class studentDetails extends StatefulWidget {
  String image;
  String name;
  String id;
  String department;
  String phnumber;
  String location;
  studentDetails(
      {super.key,
      required this.image,
      required this.name,
      required this.id,
      required this.department,
      required this.phnumber,
      required this.location});

  @override
  State<studentDetails> createState() => _studentDetailsState();
}

class _studentDetailsState extends State<studentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Student Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  widget.image,
                ),
                radius: 53,
              ),
              Text(
                widget.name,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Padding(
                   padding: const EdgeInsets.only(left:60),
                   child: Table(
                      defaultColumnWidth: FixedColumnWidth(130.0),

                    children: <TableRow>[
                    TableRow(children: [
                      Text("ID Number",style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                      Text(widget.id,style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),)
                    ]),
                    TableRow(children: [
                      Text("Phone No",style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                      Text(widget.phnumber,style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),)
                    ]),
                    TableRow(children: [
                      Text("Department",style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                      Text(widget.department,style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),)
                    ]),
                    TableRow(children: [
                      Text("Location",style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                      Text(widget.location,style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),)
                    ]),
                    
                   ],),
                 )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custembutton(
                      onpress: () {
                        Navigator.pop(context);
                      },
                      text: "Accept",
                      color: buttoncolor.d),
                  const SizedBox(
                    width: 10,
                  ),
                  custembutton(
                      onpress: () {
                        Navigator.pop(context);
                      },
                      text: "Reject",
                      color: buttoncolor.e)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class organiserDetails extends StatefulWidget {
  String image;
  String name;
  organiserDetails({super.key, required this.image, required this.name});

  @override
  State<organiserDetails> createState() => _organiserDetailsState();
}

class _organiserDetailsState extends State<organiserDetails> {
  TextEditingController idcontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Organizer",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              ),
              Text(
                widget.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ID Number:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "ID Number",
                    controller: idcontroller,
                    validate: (p0) {
                      return null;
                    },
                  ),
                  const Text(
                    "Phone No",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "Phone Number",
                    controller: numbercontroller,
                    validate: (p0) {
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  custembutton(
                      onpress: () {
                        Navigator.pop(context);

                      }, text: "Accept", color: buttoncolor.d),
                  const SizedBox(
                    width: 10,
                  ),
                  custembutton(
                      onpress: () {
                        Navigator.pop(context);
                      }, text: "Reject", color: buttoncolor.e)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
