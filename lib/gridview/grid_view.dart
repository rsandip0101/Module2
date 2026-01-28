import 'package:flutter/material.dart';

class GridViewCountEg extends StatelessWidget {
  const GridViewCountEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Grid View example'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(50, (index){
          return Card(
            child: Center(child: Text('$index')),
          );
        }
      )
    )
    );
  }
}
