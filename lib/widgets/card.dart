import 'package:flutter/material.dart';

class Card_dart extends StatelessWidget {
  const Card_dart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(child: SizedBox(
        height: 200,width: 200,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('My App'),
          ),
          elevation: 30,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      )),
    );
    
  }
}

