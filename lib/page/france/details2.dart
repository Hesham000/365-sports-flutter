import 'package:flutter/material.dart';
import 'package:project/page/france/history.dart';

class details2 extends StatelessWidget{
  List mydata=[
    {
      'tittle':' مارسيليا',
      'image': 'assets/image/france/Marseille.png',
      'clock':'17:00 pm',
      'tittle2':'أوسير',
      'image2':'assets/image/france/Auxerre.png',
    },
    {
      'tittle':'أنجير',
      'image':'assets/image/france/angers.png',
      'clock':'19:00 pm',
      'tittle2':' مارسيليا',
      'image2':'assets/image/france/Marseille.png',
    },
    {
      'tittle':'باريس',
      'image':'assets/image/france/Paris-Saint-Germain.png',
      'clock':'21:00 pm',
      'tittle2':'نانت',
      'image2':'assets/image/france/Nice.png',
    },
    {
      'tittle':'ليل',
      'image':'assets/image/france/Lille.png',
      'clock':'13:00 pm',
      'tittle2':'مونبلييه',
      'image2':'assets/image/france/Montpellier.png',
    },
    {
      'tittle':'لوريان',
      'image':'assets/image/france/Lorient.png',
      'clock':'15:00 pm',
      'tittle2':'أجاكسيو',
      'image2':'assets/image/france/Ajaccio.png',
    },
    {
      'tittle':'تولوز',
      'image':'assets/image/france/TFC.png',
      'clock':'15:00 pm',
      'tittle2':'كليرمون',
      'image2':'assets/image/france/Clermont.png',
    },
    {
      'tittle':'ستراسبورغ',
      'image':'assets/image/france/Strasbourg.png',
      'clock':'15:00 pm',
      'tittle2':'بريست',
      'image2':'assets/image/france/Brestois.png',
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

