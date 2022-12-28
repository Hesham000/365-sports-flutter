
import 'package:flutter/material.dart';
import 'package:project/page/bl/history.dart';
class BLmatches extends StatelessWidget{
  List mydata=[
    {
      'tittle':'هوفنهايم',
      'image':'assets/image/bl/download.png',
      'clock':'8:30pm',
      'tittle2':'دورتموند',
      'image2':'assets/image/bl/dortmund.png',
    },
    {
      'tittle':'فرايبورغ',
      'image':'assets/image/bl/lever.png',
      'clock':'3:30pm',
      'tittle2':'باير ليفركوزن',
      'image2':'assets/image/bl/black.png',
    },
    {
      'tittle':'بايرن ميونخ',
      'image':'assets/image/bl/bayern.png',
      'clock':'3:30pm',
      'tittle2':'يونيون برلين',
      'image2':'assets/image/bl/berlin.png',
    },
    {
      'tittle':'كولن',
      'image':'assets/image/bl/fc.png',
      'clock':'3:30pm',
      'tittle2':'فولفسبورغ',
      'image2':'assets/image/bl/volks.png',
    },
    {
      'tittle':'فيردر بريمن',
      'image':'assets/image/bl/ferder.png',
      'clock':'3:30pm',
      'tittle2':'بوخوم',
      'image2':'assets/image/bl/bakhom.png',
    },
    {
      'tittle':'شالكه',
      'image':'assets/image/bl/shalka.png',
      'clock':'3:30pm',
      'tittle2':'شتوتغارت',
      'image2':'assets/image/bl/shtotghar.png',
    },
    {
      'tittle':'لايبزيج',
      'image':'assets/image/bl/leipzic.jpg',
      'clock':'6:30pm',
      'tittle2':'ااينتراخت فرانكفورت',
      'image2':'assets/image/bl/eintracht.png',
    },
    {
      'tittle':'هوفنهايم',
      'image':'assets/image/bl/download.png',
      'clock':'8:30pm',
      'tittle2':'دورتموند',
      'image2':'assets/image/bl/dortmund.png',
    },
    {
      'tittle':'فرايبورغ',
      'image':'assets/image/bl/lever.png',
      'clock':'3:30pm',
      'tittle2':'باير ليفركوزن',
      'image2':'assets/image/bl/black.png',
    },
    {
      'tittle':'بايرن ميونخ',
      'image':'assets/image/bl/bayern.png',
      'clock':'3:30pm',
      'tittle2':'يونيون برلين',
      'image2':'assets/image/bl/berlin.png',
    },
    {
      'tittle':'كولن',
      'image':'assets/image/bl/fc.png',
      'clock':'3:30pm',
      'tittle2':'فولفسبورغ',
      'image2':'assets/image/bl/volks.png',
    },
    {
      'tittle':'فيردر بريمن',
      'image':'assets/image/bl/ferder.png',
      'clock':'3:30pm',
      'tittle2':'بوخوم',
      'image2':'assets/image/bl/bakhom.png',
    },
    {
      'tittle':'شالكه',
      'image':'assets/image/bl/shalka.png',
      'clock':'3:30pm',
      'tittle2':'شتوتغارت',
      'image2':'assets/image/bl/shtotghar.png',
    },
    {
      'tittle':'لايبزيج',
      'image':'assets/image/bl/leipzic.jpg',
      'clock':'6:30pm',
      'tittle2':'ااينتراخت فرانكفورت',
      'image2':'assets/image/bl/eintracht.png',
    },
  ];
  @override
  Widget build(BuildContext context) {

    return Container
      (
        color: Colors.grey,
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
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(mydata[i]['tittle'],
                                    style: TextStyle(
                                        fontSize: 10,
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
                                        fontSize: 10,
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

