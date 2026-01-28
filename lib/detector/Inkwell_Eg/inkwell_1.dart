import 'package:flutter/material.dart';

class Inkwell1 extends StatefulWidget {
  const Inkwell1({super.key});

  @override
  State<Inkwell1> createState() => _Inkwell1State();
}

class _Inkwell1State extends State<Inkwell1> {
  Color boxcolor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Inkwell example'),
      ),
      body: InkWell(
        onTap: (){
          setState(() {
            boxcolor = Colors.red;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Single press Detected'),backgroundColor: Colors.green,));
          });
        },
        child: Center(child: Container(
          width: 200,height: 200,
          color: boxcolor,
        )

        ),
      ),
    );
  }
}
