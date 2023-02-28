import 'package:flutter/material.dart';
import 'package:flutter_training_practice/check_box_list_tile.dart';
import 'package:flutter_training_practice/choice_chip.dart';
import 'package:flutter_training_practice/date_time_picker.dart';
import 'package:flutter_training_practice/dropdown_button.dart';
import 'package:flutter_training_practice/radio_list_tile.dart';
import 'package:flutter_training_practice/sliver_app_bar.dart';
import 'package:flutter_training_practice/table.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: SafeArea(child: Scaffold(
        body: Column(
          children: [
            TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              isScrollable: true,
              tabs: [
                Tab(child: Text("CheckBox"),),
                Tab(child: Text("ChoiceChip"),),
                Tab(child: Text("DateTime"),),
                Tab(child: Text("DropDown"),),
                Tab(child: Text("RadioList"),),
                Tab(child: Text("SliverAppBar"),),
                Tab(child: Text("Table"),),
              ],
            ),
            Expanded(child: TabBarView(
              children: [
                CheckBoxListTileScreen(),
                ChoiceChipScreen(),
                DatePickerScreen(),
                DropDownButtonScreen(),
                RadioListTileScreen(),
                SliverAppBarScreen(),
                TableScreen(),
              ],
            ))
          ],
        ),

      )),
    );
  }
}
