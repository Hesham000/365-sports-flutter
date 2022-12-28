import 'package:flutter/material.dart';
class teams extends StatelessWidget{
  List mydata=[
    {
      'tittle':'هوفنهايم',
      'image':'assets/image/bl/download.png',
      'tittle2':'دورتموند',
      'image2':'assets/image/bl/dortmund.png',
    },
    {
      'tittle':'فرايبورغ',
      'image':'assets/image/bl/lever.png',
      'tittle2':'باير ليفركوزن',
      'image2':'assets/image/bl/black.png',
    },
    {
      'tittle':'بايرن ميونخ',
      'image':'assets/image/bl/bayern.png',
      'tittle2':'يونيون برلين',
      'image2':'assets/image/bl/berlin.png',
    },
    {
      'tittle':'كولن',
      'image':'assets/image/bl/fc.png',
      'tittle2':'فولفسبورغ',
      'image2':'assets/image/bl/volks.png',
    },
    {
      'tittle':'فيردر بريمن',
      'image':'assets/image/bl/ferder.png',
      'tittle2':'بوخوم',
      'image2':'assets/image/bl/bakhom.png',
    },
    {
      'tittle':'شالكه',
      'image':'assets/image/bl/shalka.png',
      'tittle2':'شتوتغارت',
      'image2':'assets/image/bl/shtotghar.png',
    },
    {
      'tittle':'لايبزيج',
      'image':'assets/image/bl/leipzic.jpg',
      'tittle2':'ااينتراخت فرانكفورت',
      'image2':'assets/image/bl/eintracht.png',
    },
    {
      'tittle':'هوفنهايم',
      'image':'assets/image/bl/download.png',
      'tittle2':'دورتموند',
      'image2':'assets/image/bl/dortmund.png',
    },
    {
      'tittle':'فرايبورغ',
      'image':'assets/image/bl/lever.png',
      'tittle2':'باير ليفركوزن',
      'image2':'assets/image/bl/black.png',
    },
    {
      'tittle':'بايرن ميونخ',
      'image':'assets/image/bl/bayern.png',
      'tittle2':'يونيون برلين',
      'image2':'assets/image/bl/berlin.png',
    },
    {
      'tittle':'كولن',
      'image':'assets/image/bl/fc.png',
      'tittle2':'فولفسبورغ',
      'image2':'assets/image/bl/volks.png',
    },
    {
      'tittle':'فيردر بريمن',
      'image':'assets/image/bl/ferder.png',
      'tittle2':'بوخوم',
      'image2':'assets/image/bl/bakhom.png',
    },
    {
      'tittle':'شالكه',
      'image':'assets/image/bl/shalka.png',
      'tittle2':'شتوتغارت',
      'image2':'assets/image/bl/shtotghar.png',
    },
    {
      'tittle':'لايبزيج',
      'image':'assets/image/bl/leipzic.jpg',
      'tittle2':'ااينتراخت فرانكفورت',
      'image2':'assets/image/bl/eintracht.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container
      (
      color: Colors.black45,
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