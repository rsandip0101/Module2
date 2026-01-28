import 'package:flutter/material.dart';

import '../../detector/gesture_detectorEg/long_press.dart';

class DrawerStackEg extends StatelessWidget {
  const DrawerStackEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Drawr stack Eg',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        elevation:30,
        shadowColor: Colors.black,
        surfaceTintColor:Colors.blue,
        
        child: ListView(
          children: [
            DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
           child: Stack(
             children: [
               CircleAvatar(
                 backgroundColor: Colors.blue,
                 child: Icon(Icons.person,color: Colors.white,),
                 radius: 30,
               ),
               Positioned(
                 left: 1,top: 60, child: Text("R Sandip",style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold))
               ),
               Positioned(
                   left: 1,top: 90, child: Text("9895616283",style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold))
               ),
               Positioned(
                   right: 20, top: 10,
                   child: Icon(Icons.sunny,color: Colors.yellow,size: 50,)
               )
             ],
           ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.home),
                ),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_drop_down),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LongPressEg()));
                },
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.group),
                ),
                title: Text('Groups'),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.phone),
                ),
                title: Text('Calls'),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
