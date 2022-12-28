import 'package:flutter/material.dart';
import 'package:project/page/history.dart';
class Tomorowsmatch extends StatelessWidget {
  List tommatch =[
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
    return Scaffold(
      body:Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              for(int i=0;i<tommatch.length;i++)
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
              MaterialPageRoute(builder:(BuildContext context) => History(tommatch[i])),
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
                                Text(tommatch[i]['tittle'],
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundImage:AssetImage(tommatch[i]['image']),
                              maxRadius:20,
                              backgroundColor: Colors.yellow,
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(tommatch[i]['clock'],
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage:AssetImage(tommatch[i]['image2']),
                                  maxRadius:20,
                                  backgroundColor: Colors.yellow,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(tommatch[i]['tittle2'],
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                      indent:20 ,),
                  ],
                ),
            ],

          ),
        ),
      ),
    );
  }
}