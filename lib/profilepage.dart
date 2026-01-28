

import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  @override
State<StatefulWidget> createState()=> Profile ();
}
class Profile extends State{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
         children: [
           Stack(
             children: [
              CircleAvatar(
               child: Icon(Icons.person,size: 100,color: Colors.white,),
               radius: 100,
             ),
               Positioned(
                   right: 10,top: 5,
                   child: CircleAvatar(
                       backgroundColor: Colors.grey,
                       child:Icon(Icons.add,)))
                ]
           ),
           Padding(
             padding: const EdgeInsets.only(top:0,right: 300),
             child: Text('Full name',style: TextStyle(fontWeight: FontWeight.bold,),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                 suffixIcon: Icon(Icons.person),
                 label: Text('Your name'),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
               ),
             ),
           ),
           SizedBox(height: 10),
           Padding(
             padding: const EdgeInsets.only(right: 270),
             child: Text('Email address',style: TextStyle(fontWeight: FontWeight.bold)
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               keyboardType: TextInputType.emailAddress,
               decoration: InputDecoration(
                 hintText: 'example@youremail.com',
                 suffixIcon: Icon(Icons.mail),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
               ),
             ),
           ),
           SizedBox(height: 10),
           // Padding(
           //   padding: const EdgeInsets.only(right: 270),
           //   child: Text('Phone number',style: TextStyle(fontWeight: FontWeight.bold)
           //   ),
           // ),
           // Padding(
           //   padding: const EdgeInsets.all(15.0),
           //   child: TextField(
           //     keyboardType: TextInputType.phone,
           //     decoration: InputDecoration(
           //         label: Text('123456789'),
           //         suffixIcon: Icon(Icons.phone),
           //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
           //     ),
           //   ),
           // ),

           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
               padding: const EdgeInsets.all(10.0),
               height: 55,width: 350,
               decoration: BoxDecoration(
                 border: Border.all(),
                 borderRadius: BorderRadius.circular(12)
               ),
              child: Row(
                children: [
                  Container(
                    height: 25,width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,color: Colors.green
                    ),
                  ),

                  SizedBox(width: 5),

                  Text('123'),
                  Icon(Icons.arrow_drop_down),
                  Container(
                    height: 35,width: 3,color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.phone),
                        hintText: '123456789',
                        border: InputBorder.none
                      ),
                    ),
                  ))
                  
                ],
              ),
             ),
           ),



           SizedBox(height: 10),
           Padding(
             padding: const EdgeInsets.only(right: 270),
             child: Text('Home address',style: TextStyle(fontWeight: FontWeight.bold)
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               maxLines: 2,
               keyboardType: TextInputType.streetAddress,
               decoration: InputDecoration(
                   label: Text('Your address'),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
               ),
             ),
           ),
           SizedBox(height: 5),
           SizedBox(
             width: 380,
             child: ElevatedButton(onPressed: (){},
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green.shade500,
                   foregroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 ),
                 child: Text(
                   'update profile',
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),
                 )
             ),
           ),
           SizedBox(height: 5),
           Text('Cancel',style: TextStyle(fontWeight: FontWeight.bold),)
         ],
       ),
     ),
   ),

 );
  }
}

