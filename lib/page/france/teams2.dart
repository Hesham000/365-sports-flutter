import 'package:flutter/material.dart';
class teams2 extends StatelessWidget{
  List mydata=[
    {
      'tittle':'باريس سان جيرمان',
      'image':'assets/image/france/Paris-Saint-Germain.png',

    },
    {
      'tittle':'مارسيليا',
      'image':'assets/image/france/Marseille.png',
    },
    {
      'tittle':'نيس',
      'image':'assets/image/france/Nice.png',

    },
    {
      'tittle':'ليل',
      'image':'assets/image/france/Lille.png',

    },
    {
      'tittle':'ليون',
      'image':'assets/image/france/Lyon.png',

    },
    {
      'tittle':'لينس',
      'image':'assets/image/france/Lens.png',

    },
    {
      'tittle':'رينس',
      'image':'assets/image/france/Rennais.png',

    },
    {
      'tittle':'موناكو',
      'image':'assets/image/france/Monaco.png',
    },
    {
      'tittle':'موبليه',
      'image':'assets/image/france/Montpellier.png',

    },
    {
      'tittle':'تروا',
      'image':'assets/image/france/Troyes.png',

    },
    {
      'tittle':'ستراسبورغ',
      'image':'assets/image/france/Strasbourg.png',
    },
    {
      'tittle':'لوريان ',
      'image':'assets/image/france/Lorient.png',
    },
    {
      'tittle':'انجيز',
      'image':'assets/image/france/angers.png',
    },
    {
      'tittle':'كليرموت',
      'image':'assets/image/france/Clermont.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container
      (
      color: Colors.blueGrey,
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
                                  color: Colors.black,
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