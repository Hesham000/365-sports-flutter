import 'package:flutter/material.dart';
import 'package:project/page/history.dart';
class Todaymatch extends StatelessWidget {
 List today =[
  {
    'tittle':'ارسنال',
    'image':'assets/image/pl/Arsenal.png',
    'clock':'8:30am',
    'tittle2':'استون ',
    'image2':'assets/image/pl/AV.png',
  },
   {
     'tittle':'بورنموث',
     'image':'assets/image/pl/Borunmouth.png',
     'clock':'9:30am',
     'tittle2':'ليفربول',
     'image2':'assets/image/pl/Liver.png',
   },
   {
     'tittle':' سيتي',
     'image':'assets/image/pl/mancity.png',
     'clock':'1:00pm',
     'tittle2':'ساوثن',
     'image2':'assets/image/pl/South.png',
   },
   {
     'tittle':'توتنهام',
     'image':'assets/image/pl/Spurs.png',
     'clock':'2:30pm',
     'tittle2':'ويستهام',
     'image2':'assets/image/pl/WH.png',
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
     'tittle2':' ليفركوزن',
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
        for(int i=0;i<today.length;i++)
         Column(
          children: [
           InkWell(
            onTap: (){
             Navigator.of(context).push(
              MaterialPageRoute(builder:(BuildContext context) => History(today[i])),
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
               Text(today[i]['tittle'],
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold
                ),),
              ],
             ),
             SizedBox(width: 10,),
             CircleAvatar(
              backgroundImage:AssetImage(today[i]['image']),
              maxRadius:20,
              backgroundColor: Colors.yellow,
             ),
             SizedBox(width: 10,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(today[i]['clock'],
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
                  backgroundImage:AssetImage(today[i]['image2']),
                  maxRadius:20,
                  backgroundColor: Colors.yellow,
                 ),
                ],
               ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(today[i]['tittle2'],
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
