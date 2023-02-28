import 'package:flutter/material.dart';

class DropDownButtonScreen extends StatefulWidget {
  const DropDownButtonScreen({Key? key}) : super(key: key);

  @override
  State<DropDownButtonScreen> createState() => _DropDownButtonScreenState();
}

class _DropDownButtonScreenState extends State<DropDownButtonScreen> {
  dynamic dropvalue = "profile";
  List dropvaluelist = ["profile", "share", "Abot Us", "Setting"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: DropdownButton(
          value: dropvalue,
          icon: Icon(Icons.keyboard_arrow_down),
          onChanged: (val) {
            setState(() {
              dropvalue = val;
            });
          },
          items: dropvaluelist.map((e) {
            return DropdownMenuItem(
                value: e,
                child: Text(e)
            );
          }).toList(),
        ),
      ),
    ));
  }
}
