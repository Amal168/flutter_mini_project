import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminhome.dart';
import 'package:get/get.dart';

class Editevient extends StatefulWidget {
  const Editevient({super.key});

  @override
  State<Editevient> createState() => _EditevientState();
}

class _EditevientState extends State<Editevient> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController stagenocontroller = TextEditingController();
  TextEditingController timecontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Event",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
                  custemtextformfield(
                    hinttext: "00000",
                    controller: namecontroller,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Date", style: TextStyle(fontWeight: FontWeight.bold)),
                  custemtextformfield(
                    hinttext: "00000",
                    controller: datecontroller,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Stage On",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  custemtextformfield(
                    hinttext: "00000",
                    controller: stagenocontroller,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Time", style: TextStyle(fontWeight: FontWeight.bold)),
                  custemtextformfield(
                    hinttext: "00000",
                    controller: timecontroller,
                    validate: (p0) {},
                  ),
                  SizedBox(height: 20,),
                  Text("Location", style: TextStyle(fontWeight: FontWeight.bold)),
                  custemtextformfield(
                    hinttext: "00000",
                    controller: locationcontroller,
                    validate: (p0) {},
                  ),
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  child: custembutton(
                      onpress: () {
                        Navigator.pop(context);
                        
                      },
                      text: "Submit",
                      color: primarycolor.c))
            ],
          ),
        ),
      ),
    );
  }
}
