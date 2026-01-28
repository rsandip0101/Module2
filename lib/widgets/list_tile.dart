import 'package:flutter/material.dart';

class ListTileEg extends StatelessWidget {
  const ListTileEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListTile(
        title: Text('R Sandip'),
        subtitle: Text('hello'),
        leading: CircleAvatar(backgroundColor: Colors.blue,),
        trailing: Text('1 PM'),
      ),
    );
  }
}
