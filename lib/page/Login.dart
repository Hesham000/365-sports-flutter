import 'package:flutter/material.dart';
import 'package:project/component/logbutton.dart';
import 'package:project/page/home.dart';
class Login extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        shadowColor: Colors.white,
        backgroundColor: Colors.black,
        title: Center(child: Text('365 Sports',style: TextStyle(fontSize: 50,color: Colors.redAccent,),)),
      ),
      body: Container(
            height: double.infinity,
        width: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/BG.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Log(
                  x: email,
                  y: false,
                  text: 'email',
                  hinttext: 'Enter Email',
                  s: Icon(Icons.edit,color: Colors.red,),
                  m: Icon(Icons.email,color: Colors.red,),
                )
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Log(
                  x: password,
                  y: true,
                  text: 'password',
                  hinttext: 'Enter password',
                  s: Icon(Icons.edit,color: Colors.red,),
                  m: Icon(Icons.remove_red_eye,color: Colors.red,),
                )

            ),
           MaterialButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) => Home()));
            },
              child:Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Sign in'),
                  Icon(Icons.login),
                ],
              ),
              color: Colors.cyan,
              elevation: 10,
              minWidth: 100,
            ),
            TextButton(onPressed: (){
              //Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) => Signup()));
            },
                child: Text('SignUP'))
          ],
        ),
      ),
    );
  }
}