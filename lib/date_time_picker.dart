import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({Key? key}) : super(key: key);

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {


  TextEditingController datetime = TextEditingController();
  TextEditingController timenow = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: datetime,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              onTap: () async {
                DateTime? datepicker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(2100),
                );
                if (datepicker != null) {
                  print(datepicker);
                  setState(() {
                    datetime.text = TextEditingController(text: "${datepicker.day}/${datepicker.month}/${datepicker.year}").text;
                  });
                }
              },
            ),
            SizedBox(height: 30,),
            TextField(
              controller: timenow,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              onTap: ()async{
                TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                );
                if(time != null)
                  {
                    setState(() {
                      timenow.text = TextEditingController(text: "${time.hour}:${time.minute } ${time.period.name}").text;
                    });
                  }
              },
            )
          ],
        ),
      ),
    ));
  }
}
