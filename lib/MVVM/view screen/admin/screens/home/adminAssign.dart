import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custem.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';

class Adminassign extends StatefulWidget {
  const Adminassign({super.key});

  @override
  State<Adminassign> createState() => _AdminassignState();
}

class _AdminassignState extends State<Adminassign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Assign",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const custemtoggle(),
                      Container(
                        width: 293,
                        height: 51,
                        decoration: BoxDecoration(
                            color: buttoncolor.g,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Text("Kadhakali")),
                      ),
                    ],
                  ),
                  const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const custemtoggle(),
                  Container(
                    width: 293,
                    height: 51,
                    decoration: BoxDecoration(
                        color: buttoncolor.g,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text("Kolkali")),
                  ),
                ],)
                ],
              ),

              
       
              SizedBox(
                width: double.infinity,
                child: custembutton(
                    onpress: () {
                      Navigator.pop(context);
                      
                    },
                    text: "Submit",
                    color: buttoncolor.f),
              )
            ],
          ),
        ),
      ),
    );
  }
}
