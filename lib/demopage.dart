import 'package:flutter/material.dart';

class Demopage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home,color: Colors.white,fontWeight:FontWeight.w900,size:40,),
        actions: [Icon(Icons.menu,fontWeight: FontWeight.w900,size: 30,color: Colors.white,),
          SizedBox(width: 8),
          Icon(Icons.scanner,fontWeight: FontWeight.w900,size: 30,color: Colors.white,),
          SizedBox(width: 8),
          Icon(Icons.search,fontWeight: FontWeight.w900,size: 30,color: Colors.white),
          SizedBox(width: 8)],

        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
        title: Text(
          'R Sandip',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(                  
              color: Colors.blueGrey,
              width: 450,height: 500,
              child: Icon(Icons.search,color: Colors.white,size: 60, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.deepOrangeAccent,
              width: 200,height: 200,
              child: Image.network('https://blog.brilliance.com/wp-content/uploads/2017/06/perfect-diamond-isolated-on-shiny-background.jpg',fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.amber,
              width: 200,height: 200,
              child: Image.network('https://static.toiimg.com/thumb/msid-99951507,width-1280,height-720,resizemode-4/99951507.jpg',fit: BoxFit.cover),
            ),SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              width: 200,height: 200,
              child: Image.asset('Assets/images.jpg',fit: BoxFit.cover,),
            ),SizedBox(height: 10,),
            Container(
              color: Colors.deepOrangeAccent,
              width: 200,height: 200,
              child: Image.asset('Assets/diamonds.jpg',fit: BoxFit.cover,),
            )
          ],
        ),
      ),


      // body: SingleChildScrollView(scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       Container(
      //         color: Colors.deepOrange,
      //         width: 200,height: 400,
      //       ),
      //       SizedBox(width: 10,),
      //       Container(
      //         color: Colors.green,
      //         width: 200,height: 400,
      //       ),
      //       SizedBox(width: 10,),
      //   Container(
      //     color: Colors.blue,
      //     width: 200,height: 400,
      //   )
      //     ],
      //   ),
      // ),


    );
  }
}
