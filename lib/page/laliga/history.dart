import 'package:flutter/material.dart';
class History extends StatelessWidget {
  Map m;

  History(Map m) {
    this.m = m;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 150,
                width: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/BG2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      Text(m['tittle'],
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          color: Colors.black
                        ),
                      ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    backgroundImage: AssetImage(m['image']),
                    maxRadius: 20,
                    backgroundColor: Colors.yellow,
                  ),
                  SizedBox(width: 10,),
                      Text(m['clock'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                  SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundImage: AssetImage(m['image2']),
                        maxRadius: 20,
                        backgroundColor: Colors.yellow,
                      ),
                  SizedBox(width: 10,),
                   Text(m['tittle2'],
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
            indent: 10,
            endIndent: 10,
             ),
          Container(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('المقارنة',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),)
              ],
            )
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('الفوز',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
                    Text('5',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)
                  ],
                ),
                Column(
                  children: [
                    Text('التعادل',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
                    Text('2',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)
                  ],
                ),
                Column(
                  children: [
                    Text('الخسارة',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
                    Text('3',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
