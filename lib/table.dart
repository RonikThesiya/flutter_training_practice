import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Center(
        child: Table(
          border: TableBorder.all(color: Colors.green, width: 1.5),
          children:  [
            TableRow(children: [
              Text("No.", style: TextStyle(fontSize: 15.0),),
              Text("Name", style: TextStyle(fontSize: 15.0),),
              Text("Age", style: TextStyle(fontSize: 15.0),),
            ]),
            TableRow(children: [
              Text("1", style: TextStyle(fontSize: 15.0),),
              Text("Ronik", style: TextStyle(fontSize: 15.0),),
              Text("25", style: TextStyle(fontSize: 15.0),),
            ]),
            TableRow(children: [
              Text("2", style: TextStyle(fontSize: 15.0),),
              Text("Kartik", style: TextStyle(fontSize: 15.0),),
              Text("27", style: TextStyle(fontSize: 15.0),),
            ]),
            TableRow(children: [
              Text("3", style: TextStyle(fontSize: 15.0),),
              Text("Yash", style: TextStyle(fontSize: 15.0),),
              Text("26", style: TextStyle(fontSize: 15.0),),
            ]),
            TableRow(children: [
              Text("4", style: TextStyle(fontSize: 15.0),),
              Text("Ronak", style: TextStyle(fontSize: 15.0),),
              Text("29", style: TextStyle(fontSize: 15.0),),
            ]),
            TableRow(children: [
              Text("5", style: TextStyle(fontSize: 15.0),),
              Text("Darshan", style: TextStyle(fontSize: 15.0),),
              Text("28", style: TextStyle(fontSize: 15.0),),
            ]),
          ],
        ),
      ),
    ));
  }
}
