import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project/page/france/teams2.dart';
import 'details2.dart';
class dawry2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:Center(
            child: Text('الدوري الفرنسى' ,style: TextStyle(
                fontSize: 30,color: Colors.white,
                fontWeight: FontWeight.bold),),
          ),
          actions: [

            Icon(Icons.star) , Icon(Icons.add_alert)
          ],
          bottom:TabBar(
            indicatorColor: Colors.red,
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
            details2(),
            teams2()
          ],
        ),
      ),
    );
  }
}
