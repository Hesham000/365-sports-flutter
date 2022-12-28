import 'package:flutter/material.dart';
class teams extends StatelessWidget{
  List mydata=[
    {
      'tittle':'ريال مدريد',
      'image':'assets/image/laliga/RealMadrid.png',

    },
    {
      'tittle':'اشبيليه',
      'image':'assets/image/laliga/Sevilla.png',
    },
    {
      'tittle':'فالينسيا',
      'image':'assets/image/laliga/Valencia.png',

    },
    {
      'tittle':'ريو فايكانو',
      'image':'assets/image/laliga/RioFikano.png',

    },
    {
      'tittle':'ريال بيتيس',
      'image':'assets/image/laliga/Real_Betis.png',

    },
    {
      'tittle':'جيورنا',
      'image':'assets/image/laliga/Girona.png',

    },
    {
      'tittle':'اسبانيول',
      'image':'assets/image/laliga/espanyol.png',

    },
    {
      'tittle':'الماريا',
      'image':'assets/image/laliga/Almeria.png',
    },
    {
      'tittle':'ختافى',
      'image':'assets/image/laliga/Getafe.png',

    },
    {
      'tittle':'إليتشى',
      'image':'assets/image/laliga/elche.png',

    },
    {
      'tittle':'اوساسونا',
      'image':'assets/image/laliga/Osasuna.png',
    },
    {
      'tittle':'يال سوسيداد',
      'image':'assets/image/laliga/Real_Sociedad.png',
    },
    {
      'tittle':'بلد الوليد',
      'image':'assets/image/laliga/valladolid.png',
    },
    {
      'tittle':'برشلونه',
      'image':'assets/image/laliga/Barcelona.png',
    },
    /**/
  ];
  @override
  Widget build(BuildContext context) {
    return Container
      (
      color: Colors.red,
      child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Column(
              children: [
          for(int i=0;i<mydata.length;i++)
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
              backgroundImage:AssetImage(mydata[i]['image']),
              maxRadius:30,
              backgroundColor: Colors.yellow,
          ),
          SizedBox(width: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(mydata[i]['tittle'],
              style: TextStyle(
                color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
        ],
      ),

        ]),
            )

                ,]),
    ),
    );
  }
}