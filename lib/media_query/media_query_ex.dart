import 'package:flutter/material.dart';

class MediaQueryEx extends StatelessWidget {
  const MediaQueryEx({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Media Query Eg'),
      ),
      body:Center(
        child: Container(
          height: screenheight*0.8,
            width: screenwidth*0.3,
          color: Colors.green,
        ),
      ),
    );
  }
}
