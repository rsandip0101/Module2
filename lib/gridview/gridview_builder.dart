import 'package:flutter/material.dart';

class GridviewBuilderEg extends StatelessWidget {
  const GridviewBuilderEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Grid view Builder"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1
          ),
          itemBuilder:  (context ,index){
            return Card(
              color: Colors.grey,
              child: Center(child: Text('$index')),
            );
          }

      )
    );
  }
}
