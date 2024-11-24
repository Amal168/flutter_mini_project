import 'package:flutter/material.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/custemimage.dart';
import 'package:flutter_mini_project/MVVM/utils/widgets/customcolor.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/appealList.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/Appeal/updateResult.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/addResult.dart';
import 'package:flutter_mini_project/MVVM/view%20screen/organizer/organibottum/event/resuitEventdetails.dart';

class Appealbottum extends StatefulWidget {
  const Appealbottum({
    super.key,
  });

  @override
  State<Appealbottum> createState() => _AppealbottumState();
}

class _AppealbottumState extends State<Appealbottum> {
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
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Appeal",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
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
                    child:
                       InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Appeallist()));
                        },
                        child: Card(
                          child: ListTile(
                            leading: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Updateresult()));
                                },
                                child: Image.network(event["image"])),
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
    );
  }
}
