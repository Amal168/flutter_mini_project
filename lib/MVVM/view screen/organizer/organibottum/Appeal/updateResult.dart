import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custemimage.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealList.dart';

class Updateresult extends StatefulWidget {
  const Updateresult({super.key});

  @override
  State<Updateresult> createState() => _UpdateresultState();
}

class _UpdateresultState extends State<Updateresult> {
  TextEditingController eventName = TextEditingController();
  TextEditingController vedioLink = TextEditingController();
  TextEditingController Discription = TextEditingController();
  TextEditingController result = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Event Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "Margamkali",
                    controller: eventName,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Vedio Link",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    hinttext: "www,httrsgssbz",
                    controller: vedioLink,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  custemtextformfield(
                    lines: 5,
                    hinttext: "",
                    controller: Discription,
                    validate: (p0) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Result",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30)),
                    child: CustemImagePicker(),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    child: custembutton(
                        onpress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Appeallist()));
                        },
                        text: "Submit",
                        color: buttoncolor.f),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
