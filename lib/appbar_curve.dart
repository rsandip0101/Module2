import 'package:flutter/material.dart';

class AppbarCurve extends StatelessWidget {
  const AppbarCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 5,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30)
          )
        ),
      ),
      body: Center(
        child: Container(
          height: 30,width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          color: Colors.green
          ),
        ),
      ),
    );
  }
}
