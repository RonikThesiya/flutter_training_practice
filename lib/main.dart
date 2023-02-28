import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_training_practice/bottom_bar.dart';
import 'package:flutter_training_practice/check_box_list_tile.dart';
import 'package:flutter_training_practice/radio_list_tile.dart';
import 'package:flutter_training_practice/sliver_app_bar.dart';
import 'package:flutter_training_practice/tabbar.dart';
import 'package:flutter_training_practice/table.dart';
import 'choice_chip.dart';
import 'date_time_picker.dart';
import 'dropdown_button.dart';
import 'dart:io' show Platform;

void main()
{
  // Screen Orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);



  if(Platform.isAndroid)
    {
      runApp(
          MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: 'bottom',
        routes: {
          '/':(context) => RadioListTileScreen(),
          'checkbox':(context) => CheckBoxListTileScreen(),
          'datepicker':(context) => DatePickerScreen(),
          'dropdown':(context) => DropDownButtonScreen(),
          'choicechip':(context) => ChoiceChipScreen(),
          'table':(context) => TableScreen(),
          'tabbar':(context) => TabBarScreen(),
          'sliver':(context) => SliverAppBarScreen(),
          'bottom':(context) => BottomBarScreen(),
        },
      ));

    }
  else if(Platform.isIOS)
    {
      runApp(MaterialApp(
        theme:       ThemeData.light(),
        debugShowCheckedModeBanner: false,
        initialRoute: 'bottom',
        routes: {
          '/':(context) => RadioListTileScreen(),
          'checkbox':(context) => CheckBoxListTileScreen(),
          'datepicker':(context) => DatePickerScreen(),
          'dropdown':(context) => DropDownButtonScreen(),
          'choicechip':(context) => ChoiceChipScreen(),
          'table':(context) => TableScreen(),
          'tabbar':(context) => TabBarScreen(),
          'sliver':(context) => SliverAppBarScreen(),
          'bottom':(context) => BottomBarScreen(),

        },
      ));
    }


}


