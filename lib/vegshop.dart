import 'package:flutter/material.dart';

class VegShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'App Bar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
        child:Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('Assets/fruits.jpg',),
                    alignment: Alignment(0,2)
                ),
              ),
              //  color: Colors.blueGrey,
              width: 500,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(left:60,top:250),
                child: Text(
                  "Vegetable Store",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Column(
              children: [
              Row(
                children: [
                  Icon(Icons.home,color: Colors.black,size: 40,),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Hello',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.email,color: Colors.black,size: 40,),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Hello',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))
                ],
              ),
                SizedBox(
                  height: 10,
                ),
                Row(
                children: [
                  Icon(Icons.search,color: Colors.black,size: 40,),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Hello',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))
                ],
              ),

            ],)
          ],
        ),
      ),
    );
  }
}
