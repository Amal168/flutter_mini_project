import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custemimage.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:get/get.dart';

class Addresult extends StatefulWidget {
  const Addresult({super.key});

  @override
  State<Addresult> createState() => _AddresultState();
}

class _AddresultState extends State<Addresult> {
  String dropdownvalue = "Oppana";
  File? image;
  Future imagepicker() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownvalue,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownvalue = value!;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: "Oppana",
                            child: Text("Oppana"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Margamkalli",
                            child: Text("Margamkalli"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Kolkalli",
                            child: Text("Kolkalli"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Image",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(30)),
                        child: CustemImagePicker(),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.infinity,
                child: custembutton(
                    onpress: () {
                      Navigator.pop(context);
                    },
                    text: "Submit",
                    color: buttoncolor.f),
              ),
            )
          ],
        ),
      ),
    );
  }
}
