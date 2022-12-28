import 'package:flutter/material.dart';
import 'package:project/page/Login.dart';
import 'package:project/page/bl/details.dart';
import 'package:project/page/france/dawry2.dart';
import 'package:project/page/home%20pages/todays%20match.dart';
import 'package:project/page/home%20pages/tomorrows%20match.dart';
import 'package:project/page/laliga/dawry.dart';

import 'bl/dawry.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          drawer:Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: AssetImage('assets/image/user.jpg'),
                    ),
                    accountName: Text('Hesham Ali ,Marwan elkhatteb,Martian Mamdouh'), accountEmail: Text('Hesham@gmail.com')),
                InkWell(
                  onTap: (){},
                  child: InkWell(onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(BuildContext context) => dawry3()),
                    );
                  },
                    child: Card(
                      color: Colors.black,
                      child: ListTile(
                        title: Text('الدوري الأسباني',style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        trailing: Icon(Icons.sports_basketball_rounded,color: Colors.white,),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.cyan,
                  child: ListTile(
                    title: Text('الدوري الأنجليزي',style: TextStyle(
                        fontSize: 30,fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.sports_basketball_rounded),
                  ),
                ),
                InkWell( onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:(BuildContext context) => BL()),
                  );
                },
                  child: Card(
                    color: Colors.red,
                    child: ListTile(
                      title: Text('الدوري الألماني',style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold
                      ),),
                      trailing: Icon(Icons.sports_basketball_rounded),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(BuildContext context) => dawry2()),
                    );
                  },
                  child: Card(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text('الدوري الفرنسي',style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold
                      ),),
                      trailing: Icon(Icons.sports_basketball_rounded),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(BuildContext context) => Login()),
                    );
                  },
                  child: Card(
                    color: Colors.cyan,
                    child: ListTile(
                      title: Text('Sign out',style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold
                      ),),
                      trailing: Icon(Icons.logout),
                    ),
                  ),
                ),
              ],
            ),
          ),
    appBar: AppBar(
      backgroundColor: Colors.black,
        bottom: TabBar(
        indicatorColor: Colors.red,
        labelColor: Colors.red,
        tabs: [
        Tab(
          text: 'مباريات اليوم' ,
        ),
        Tab(
          text: 'مباريات الغد' ,
         ),
    ]
    ),
    ),
          body: TabBarView(
              children: [
              Todaymatch(),
           Tomorowsmatch(),
          ],
    ),
    ),
    );
  }
}
