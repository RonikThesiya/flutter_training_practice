import 'package:flutter/material.dart';



class SliverAppBarScreen extends StatefulWidget {
  const SliverAppBarScreen({Key? key}) : super(key: key);

  @override
  State<SliverAppBarScreen> createState() => _SliverAppBarScreenState();
}

class _SliverAppBarScreenState extends State<SliverAppBarScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                  expandedHeight: 230,
                  snap: false,
            pinned: false,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Sliver AppBar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ) //TextStyle
              ), //Text
              )),

              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) => ListTile(
                    tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                    title: Center(
                      child: Text('$index',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 50,
                              color: Colors.greenAccent[400]) //TextStyle
                      ), //Text
                    ), //Center
                  ), //ListTile
                  childCount: 51,
                ), //SliverChildBuildDelegate
              ) //SliverList
            ],
          ),

        ],
      ),
    ));
  }
}
