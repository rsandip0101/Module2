
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Signin();
}
class Signin extends State{
  bool eye = true;
  @override
  Widget build(BuildContext context) {
 return Scaffold(

appBar: AppBar(
  backgroundColor: Colors.white,
  leading: Icon(Icons.arrow_back),
),
   body: Padding(
     padding: const EdgeInsets.all(50.0),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         TextField(
           keyboardType: TextInputType.emailAddress,
           decoration: InputDecoration(
             prefixIcon: Icon(Icons.person),
             label: Text('username or email'),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
           ),
         ),
         SizedBox(height:20),
         TextField(
           obscureText: eye,
           keyboardType: TextInputType.phone,
           decoration: InputDecoration(
             prefixIcon: Icon(Icons.lock),
             suffixIcon: IconButton(onPressed: (){
               setState(() {
                 eye =! eye;
               });
             }, icon: Icon(eye? Icons.visibility_off:Icons.visibility)
             ),
             label: Text('password'),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
           ),
         ),
         SizedBox(height: 25),
         SizedBox(
           height: 50,
           width: 300,
           child: ElevatedButton(onPressed: (){},
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.purple,
                 foregroundColor: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15)
                 )
               ),
               child: Text('LOGIN',style: TextStyle(fontSize: 20),)),
         ),
         SizedBox(height: 15),
         Text('Forgot password?'),
         SizedBox(height: 20),
         Text("Don't have an account?    Signup"),
         SizedBox(height: 10),
         Text('------------------------- OR ---------------------------'),
         SizedBox(height: 10),
         Text('Signup with Social Networks'),
         SizedBox(height: 20),
         Padding(
           padding: const EdgeInsets.only(left: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Icon(Icons.facebook,size: 50),
               //SizedBox(width: 10),
               Image.asset('Assets/google.png',height: 40, width: 40),
               //SizedBox(width: 10),
               Image.asset('Assets/twitter.png',height: 40,width: 40),
               
             ],
           ),
         )
       ],
     ),
   )
 );
  }
}