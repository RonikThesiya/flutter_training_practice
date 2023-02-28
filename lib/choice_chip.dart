import 'package:flutter/material.dart';
import 'package:flutter_training_practice/check_box_list_tile.dart';

class ChoiceChipScreen extends StatefulWidget {
  const ChoiceChipScreen({Key? key}) : super(key: key);

  @override
  State<ChoiceChipScreen> createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {

  List chips = ["Ronik","Raju","Raj"];
  dynamic value = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Center(
            child: Wrap(
              children: chips.map((e) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ChoiceChip(
                    selectedColor: Colors.blue,
                    label: Text("${e}"),
                    selected: value == e,
                    onSelected: (bool selected) {
                      setState(() {
                        value = selected ? e : null;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CheckBoxListTileScreen();
            }));
          }, child: Text("Next")),
        ],
      ),
    ));
  }
}
