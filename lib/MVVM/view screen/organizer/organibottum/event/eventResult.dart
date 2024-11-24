import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custemimage.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/addResult.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/resuitEventdetails.dart';

class Eventresult extends StatefulWidget {
  const Eventresult({super.key,});

  @override
  State<Eventresult> createState() => _EventresultState();
}

class _EventresultState extends State<Eventresult> {
  List<Map<String, dynamic>> eventlist = [
    {
      "image":
          "https://thecompoundadl.com.au/wp-content/uploads/2021/09/placeholder-79.jpg",
      "name": "Mohiniattam"
    },
    {
      "image":
          "https://thecompoundadl.com.au/wp-content/uploads/2021/09/placeholder-79.jpg",
      "name": "Kolkali"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: eventlist.length,
                itemBuilder: (context, index) {
                  final event = eventlist[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Resuiteventdetails(
                                      name: event["name"],
                                    )));
                      },
                      child: Card(
                        child: ListTile(
                          leading: Image.network(event["image"]),
                          title: Text(event["name"]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttoncolor.h,
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => Addresult()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
