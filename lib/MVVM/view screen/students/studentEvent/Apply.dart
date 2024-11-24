import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/students/studentHome.dart';
import 'package:get/get.dart';

class Apply extends StatefulWidget {
  const Apply({
    super.key,
  });

  @override
  State<Apply> createState() => _ApplyState();
}

class _ApplyState extends State<Apply> {
  TextEditingController nmaecontroll = TextEditingController();
  TextEditingController idcontroll = TextEditingController();
  TextEditingController stagecontroll = TextEditingController();
  TextEditingController discontroll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage:
                  // NetworkImage("https://th.bing.com/th/id/OIP.TctatNGs7RN-Dfc3NZf91AAAAA?rs=1&pid=ImgDetMain"),
                  AssetImage("assest/photo 3.png"),
              radius: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name"),
                      custemtextformfield(
                        hinttext: "",
                        controller: nmaecontroll,
                        validate: (p0) {},
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID Number"),
                      custemtextformfield(
                        hinttext: "",
                        controller: idcontroll,
                        validate: (p0) {},
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone No"),
                      custemtextformfield(
                        hinttext: "",
                        controller: stagecontroll,
                        validate: (p0) {},
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Department"),
                      custemtextformfield(
                        hinttext: "",
                        controller: discontroll,
                        validate: (p0) {},
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: custembutton(
                    onpress: () {
                      Navigator.pop(context);
                      Get.to(Studenthome());
                    },
                    text: "Sibmit",
                    color: buttoncolor.f),
              ),
            )
          ],
        ),
      ),
    );
  }
}
