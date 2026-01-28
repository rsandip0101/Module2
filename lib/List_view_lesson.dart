import 'package:flutter/material.dart';

class ListViewLesson extends StatelessWidget {
  const ListViewLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 300,width: 450,
            color: Colors.green,
            child: Center(child: Text('One')),
          ),
          Container(
            height: 300,width: 450,
            color: Colors.blue,
            child: Center(child: Text('two')),
          ),
          Container(
            height: 300,width: 450,
            color: Colors.yellow,
            child: Center(child: Text('three')),
          ),
          Container(
            height: 300,width: 450,
            color: Colors.orange,
            child: Center(child: Text('four')),
          ),
          Container(
            height: 300,width: 450,
            color: Colors.black,
            child: Center(child: Text('five')),
          ),
        ],
      ),
    );
  }
}
