import 'package:flutter/material.dart';

import '../bottom_navigationbarEg.dart';

class TabBarEg extends StatelessWidget {
  const TabBarEg({super.key});
  @override

  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab bar eg'),
            backgroundColor: Colors.blueAccent,
            bottom: TabBar(
                indicatorColor: Colors.red,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                dividerColor: Colors.black,
                dividerHeight: 5,
                tabs: [
              Tab(icon: Icon(Icons.person),
              text: 'profile',
              ),
              Tab(icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(icon: Icon(Icons.call),
                text: 'calls',
              ),
            ]
            )
          ),
          body: TabBarView(children: [
           // Center(child: Text('Profile')),
            BottomNavigationbareg(),
            Center(child: Text('Home')),
            Center(child: Text('Calls'))
          ]),
        )
    );
  }
}
