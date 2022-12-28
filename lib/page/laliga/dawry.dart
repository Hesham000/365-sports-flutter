import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project/page/laliga//teams.dart';
import 'details.dart';
class dawry3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.black,
      title:Center(
        child: Text('الدوري الاسبانى' ,style: TextStyle(
        fontSize: 30,color: Colors.white,
        fontWeight: FontWeight.bold),),
      ),
    actions: [

    Icon(Icons.star) , Icon(Icons.add_alert)
    ],
        bottom:TabBar(
          indicatorColor: Colors.black,
            labelColor: Colors.white,
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
             details(),
              teams()
            ],
          ),
    ),
    );
  }
}
