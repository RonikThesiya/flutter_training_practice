import 'package:flutter/material.dart';
import 'package:flutter_training_practice/date_time_picker.dart';
import 'package:flutter_training_practice/sliver_app_bar.dart';
import 'package:flutter_training_practice/tabbar.dart';
import 'package:permission_handler/permission_handler.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  int i = 0;
  bool permissionGranted = false;
  @override
  void initState() {
    getStoragePermission();
       super.initState();
  }
  Future getStoragePermission() async {
    if (await Permission.storage.request().isGranted) {
      setState(() {
        permissionGranted = true;
      });
    } else if (await Permission.storage.request().isPermanentlyDenied) {
      await openAppSettings();
    } else if (await Permission.storage.request().isDenied) {
      setState(() {
        permissionGranted = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar"),
        actions: [
          IconButton(onPressed: ()async{
            if(await Permission.camera.isDenied)
              {
                Permission.camera.request();
              }

          }, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: ()async{

          }, icon: Icon(Icons.storage)),
        ],
      ),
      body: IndexedStack(
        index: i,
        children: [
          TabBarScreen(),
          SliverAppBarScreen(),
          DatePickerScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.tab),label: "TabBar"),
          BottomNavigationBarItem(icon: Icon(Icons.app_registration_outlined),label: "SliverAppBar"),
          BottomNavigationBarItem(icon: Icon(Icons.date_range),label: "DateTime"),
        ],
        currentIndex: i,
        onTap: (index)
        {
          setState(() {
            i = index;
          });
        },
      ),
    ));
  }
}
