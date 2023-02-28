import 'package:flutter/material.dart';

class Timevalue {
  String? value;
  int? key;

  Timevalue({this.value, this.key});
}

class RadioListTileScreen extends StatefulWidget {
  const RadioListTileScreen({Key? key}) : super(key: key);

  @override
  State<RadioListTileScreen> createState() => _RadioListTileScreenState();
}

int groupvalue = 1;
final buttondetails = [
  Timevalue(key: 30, value: "30 minutes"),
  Timevalue(key: 60, value: "1 hour"),
  Timevalue(key: 120, value: "2 hour"),
  Timevalue(key: 240, value: "4 hour"),
];

class _RadioListTileScreenState extends State<RadioListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView.builder(
        itemCount: buttondetails.length,
        itemBuilder: (context,index){
          return RadioListTile(
            title: Text("${buttondetails[index].value}"),
            value: buttondetails[index].key,
            groupValue: groupvalue,
            onChanged: (val){
              setState(() {
                groupvalue = val!;
              });
              print(groupvalue);

            },

          );
        },

      ),
    ));
  }
}
