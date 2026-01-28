import 'package:flutter/material.dart';

import '../../detector/gesture_detectorEg/long_press.dart';
import '../bottom_navigationbarEg.dart';

class DrawerEg extends StatelessWidget {
  const DrawerEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Drawer Example',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(Icons.person),
                ),
                SizedBox(height: 20),
                Text('Oceana'),
                Text('Japan')
              ],
            )
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.lightGreen,
              child: Icon(Icons.person),),
              title: Text('My profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationbareg()));
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.lightGreen,
                child: Icon(Icons.group),),
              title: Text('Group'),
                onTap: (){
                 Navigator.pop(context);
                 //Navigator.push(context, MaterialPageRoute(builder: (context)=> LongPressEg()));
                },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.lightGreen,
                child: Icon(Icons.contact_page),),
              title: Text('Contact'),
                  onTap: (){
                  Navigator.pop(context);
                  },
            ),

            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.lightGreen,
                  child: Icon(Icons.call),),
                title: Text('Calls'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.lightGreen,
                  child: Icon(Icons.call),),
                title: Text('Calls'),
                  onTap: (){
                  Navigator.pop(context);
                  },
              ),
            ),Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.lightGreen,
                  child: Icon(Icons.call),),
                title: Text('Calls'),
                  onTap: (){
                  Navigator.pop(context);
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
