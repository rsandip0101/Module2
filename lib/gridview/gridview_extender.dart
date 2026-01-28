import 'package:flutter/material.dart';

class GridviewExtenderEg extends StatelessWidget {
  const GridviewExtenderEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Text("Grid view extender eg"), 
      ),
      body: GridView.extent(maxCrossAxisExtent: 50,
      children: List.generate(100, (index){
        return Card(
          child: Center(child: Text('$index')),
        );
      }

      )
      ),
      );
  }
}
