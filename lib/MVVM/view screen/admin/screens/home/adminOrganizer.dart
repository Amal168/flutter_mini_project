import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/admin/screens/home/adminAssign.dart';
import 'package:get/get.dart';

class Adminorganizer extends StatefulWidget {
  const Adminorganizer({super.key});

  @override
  State<Adminorganizer> createState() => _AdminorganizerState();
}

class _AdminorganizerState extends State<Adminorganizer> {
  TextEditingController Idcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController assigncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Organizer ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage("image"),
                ),
                SizedBox(height: 20,),
                Text("Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ID Number",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    custemtextformfield(
                      hinttext: "000000",
                      controller: Idcontroller,
                      validate: (p0) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Phone No",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    custemtextformfield(
                      hinttext: "000000",
                      controller: phonecontroller,
                      validate: (p0) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Assign", style: TextStyle(fontWeight: FontWeight.bold)),
                    custemtextformfield(
                      high: 150,
                      hinttext: "000000",
                      verticalPadding: 90,
                      controller: assigncontroller,
                      validate: (p0) {
                        return null;
                      },
                    ),
                  ],
                ),

                SizedBox(height: 40,),
                SizedBox(
                  width: double.infinity,
                  child: custembutton(
                      onpress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Adminassign()));
                      },
                      text: "Assign",
                      color: buttoncolor.f),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}