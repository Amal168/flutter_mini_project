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
        title: Text(
          "Student Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height:10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'ID Numdaer:${widget.id}',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Department:${widget.department}',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Phone Numder:${widget.phnumber}',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Location:${widget.location}',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custembutton(
                      onpress: () {}, text: "Accept", color: buttoncolor.d),
                  SizedBox(
                    width: 10,
                  ),
                  custembutton(
                      onpress: () {}, text: "Reject", color: buttoncolor.e)
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
  organiserDetails({
    super.key,
    required this.image,
    required this.name
  });

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
        title: Text(
          "Student Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              ),
              Text(
                '${widget.name}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID Number:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "ID Number",
                    controller: idcontroller,
                    validate: (p0) {},
                  ),
                  Text(
                    "Phone No",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "Phone Number",
                    controller: numbercontroller,
                    validate: (p0) {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  custembutton(
                      onpress: () {}, text: "Accept", color: buttoncolor.d),
                  SizedBox(
                    width: 10,
                  ),
                  custembutton(
                      onpress: () {}, text: "Reject", color: buttoncolor.e)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
