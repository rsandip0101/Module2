import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Example"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        // children: [
          // Text('R Sandip'),
          // Text('R Sandip'),
          // Text('R Sandip'),
          // Text('R Sandip'),
          // Text('R Sandip'),  //no need for this much data, we can use loop
          // Text('R Sandip'),
          // Text('R Sandip'),
          // Text('R Sandip'),
          // Text('R Sandip'),
          // Text('R Sandip'),
      // ],
        children: List.generate(50, (index){
          return Column(
            children: [
              Text('Text $index'),
              Divider(),
              CircleAvatar()
            ],
          );
        }
        ),
      ),
    );
  }
}
