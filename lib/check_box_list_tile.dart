import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class checkBox
{
  String? Name;
  bool? value;

  checkBox({this.Name, this.value});
}


class CheckBoxListTileScreen extends StatefulWidget {
  const CheckBoxListTileScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTileScreen> createState() => _CheckBoxListTileScreenState();
}


final checkbox = [
  checkBox(value: false,Name: "Ronik"),
  checkBox(value: false,Name: "Kartik"),
  checkBox(value: false,Name: "Ronak"),
  checkBox(value: false,Name: "Yash"),
];



class _CheckBoxListTileScreenState extends State<CheckBoxListTileScreen> {

  // bool value = false;


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
       final dialog= await  showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Are you sure?"),
            actions: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context,true);
              }, child: Text("Yes")),
              ElevatedButton(onPressed: (){
                Navigator.pop(context,false);

              }, child: Text("No")),
            ],
          );
        });
       return dialog;
      },
      child: SafeArea(child: Scaffold(
        body: ListView.builder(itemCount: checkbox.length,itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text("${checkbox[index].Name}"),
            value: checkbox[index].value,
            selected: checkbox[index].value!,
          onChanged: (val){
              setState(() {
                checkbox[index].value = val!;
              });
          },
          //   onChanged: (bool val) {
          //   setState(() {
          //     value = val;
          //   });
          // },
        );
        },),
      )),
    );
  }
}
