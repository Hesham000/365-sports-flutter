import 'package:flutter/material.dart';

import 'history.dart';

class details extends StatelessWidget{
  List mydata=[
    {
      'tittle':'جيرونا',
      'image': 'assets/image/laliga/Girona.png',
      'clock':'14:00 pm',
      'tittle2':'مايوركا',
      'image2':'assets/image/laliga/mallorca.png',
    },
    {
      'tittle':'ريال بيتيس',
      'image':'assets/image/laliga/Real_Betis.png',
      'clock':'16:15 pm',
      'tittle2':'ريال مدريد',
      'image2':'assets/image/laliga/RealMadrid.png',
    },
    {
      'tittle':'اتليتكو مدريد',
      'image':'assets/image/laliga/Atletico_Madrid.png',
      'clock':'18:30 pm',
      'tittle2':'ريال سوسيداد',
      'image2':'assets/image/laliga/Real_Sociedad.png',
    },
    {
      'tittle':'اشبيليه',
      'image':'assets/image/laliga/Sevilla.png',
      'clock':'21:00 pm',
      'tittle2':'برشلونه',
      'image2':'assets/image/laliga/Barcelona.png',
    },
    {
      'tittle':'رايو فايكانو',
      'image':'assets/image/laliga/RioFikano.png',
      'clock':'14:00 pm',
      'tittle2':'أوساسونا',
      'image2':'assets/image/laliga/Osasuna.png',
    },
    {
      'tittle':'إسبانيول',
      'image':'assets/image/laliga/espanyol.png',
      'clock':'16:15 pm',
      'tittle2':'أتليتكو بلباو',
      'image2':'assets/image/laliga/athletic-bilbao.png',
    },
    {
      'tittle':'إليتشى',
      'image':'assets/image/laliga/elche.png',
      'clock':'18:30 pm',
      'tittle2':'فياريال',
      'image2':'assets/image/laliga/Villarreal.png',
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
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder:(BuildContext context) => History(mydata[i])),
                          );

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(mydata[i]['tittle'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                backgroundImage:AssetImage(mydata[i]['image']),
                                maxRadius:20,
                                backgroundColor: Colors.yellow,
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(mydata[i]['clock'],
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )],

                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                backgroundImage:AssetImage(mydata[i]['image2']),
                                maxRadius:20,
                                backgroundColor: Colors.yellow,
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(mydata[i]['tittle2'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )],
                              ),


                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black38,
                        height: 5,
                        thickness: 3,
                        indent: 20,endIndent: 20,
                      ),
                    ],
                  ),
              ],
            )));
  }
  }

