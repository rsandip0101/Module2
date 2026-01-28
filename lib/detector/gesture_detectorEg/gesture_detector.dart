import 'package:flutter/material.dart';

class GestureDetectorEg extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Guesture Detector Eg'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text('Tap me'),

          onTap: (){
            print('single tap');
          },

          onDoubleTap: (){
            print('Double tap');
          },
          onLongPress: (){
            print('onLongPress');
          }
        ),
      )
    );
  }
}
