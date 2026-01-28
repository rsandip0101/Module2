import 'package:flutter/material.dart';

class BottomNavigationbareg extends StatefulWidget {
  const BottomNavigationbareg({super.key});

  @override
  State<BottomNavigationbareg> createState() => _BottomNavigationbaregState();
}

class _BottomNavigationbaregState extends State<BottomNavigationbareg> {
  int selectedindex = 0;
  final List<Widget> screens = [
    Center(child: Text('Home Screen',style: TextStyle(fontWeight: FontWeight.bold),),),
    Center(child: Text('Profile Screen',style: TextStyle(fontWeight: FontWeight.bold),),),
    Center(child: Text('Setting Screen',style: TextStyle(fontWeight: FontWeight.bold),),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Bottom Naviation bar"),
      ),
      body: screens[selectedindex], // eg screen[0], Home screen
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.red,
          onTap: (index){
            setState(() {
              selectedindex=index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),

          ]),
    );
  }
}
