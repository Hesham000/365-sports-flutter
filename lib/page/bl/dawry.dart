import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/page/bl/details.dart';
import 'package:project/page/bl/teams.dart';
class BL extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.red,
      title:Center(
        child: Text('الدوري الالماني' ,style: TextStyle(
        fontSize: 20,color: Colors.white,
        fontWeight: FontWeight.normal),),
      ),
    actions: [

    Icon(Icons.star) , Icon(Icons.add_alert)
    ],
        bottom:TabBar(
          indicatorColor: Colors.black,
            labelColor: Colors.brown,
            tabs: [
        Tab(
      text: 'جدول',
          ),

              Tab(
                text: ' فرق ',
              ),],
        ),
        ),
          body: TabBarView(
            children: [
             BLmatches(),
              teams()
            ],
          ),
    ),
    );
  }
}
