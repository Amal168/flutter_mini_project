import 'package:flutter/material.dart';

class Tables extends StatefulWidget {
  const Tables({super.key});

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Table Example")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Table(
              defaultColumnWidth: FixedColumnWidth(100.0),
              children: const <TableRow>[
                TableRow(
                  children: [
                    Text("Header 1", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Header 2", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                TableRow(
                  children: [
                    Text("Row 1, Col 1", textAlign: TextAlign.center),
                    Text("Row 1, Col 2", textAlign: TextAlign.center),
                  ],
                ),
                TableRow(
                  children: [
                    Text("Row 2, Col 1", textAlign: TextAlign.center),
                    Text("Row 2, Col 2", textAlign: TextAlign.center),
                  ],
                ),
                TableRow(
                  children: [
                    Text("Row 3, Col 1", textAlign: TextAlign.center),
                    Text("Row 3, Col 2", textAlign: TextAlign.center),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
