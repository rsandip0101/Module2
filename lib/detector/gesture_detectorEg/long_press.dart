import 'package:flutter/material.dart';

class LongPressEg extends StatelessWidget {
  const LongPressEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Long press action',style: TextStyle(color: Colors.white),)
      ),
      body: GestureDetector(
        child: Center(
          child: Container(
            height: 50,width: 130,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.yellowAccent,
                    width: 3,
              )
            ),
            child: Center(
              child: Text('Hold me',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30
                      )
              ),
            ),
          ),
        ),
        onLongPress: (){ //set state not needed as its just a snack bar, ui not updating
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Long press Detected'),backgroundColor: Colors.green,));
        },

        onDoubleTap: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Double tap Detected'),backgroundColor: Colors.green));
        },
        onTap: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Single tap Detected'),backgroundColor: Colors.green));
        }
    ),
    );
  }
}
