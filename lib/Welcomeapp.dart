import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        backgroundColor: Colors.blue,
        title: Text(
          'Welcome!',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.home, color: Colors.white),
        actions: [
          Icon(Icons.search, color: Colors.white, fontWeight: FontWeight.bold),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
          Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade400,
            image: DecorationImage(
              image: AssetImage('Assets/office lady.png'),
              fit: BoxFit.cover,
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.only(top: 230),
            child: Container(
              width: 10,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade100,
              ),

              child: Column(
                children: [
                  Text(
                    'Hello, User!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Explore amazing features',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: 40),

        Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue.shade50,
            border: BoxBorder.all(width: 2, color: Colors.blue.shade200),
          ),

          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.blue,
                  ),

                  child: Icon(
                    Icons.tips_and_updates,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Discover Tips',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Get the most out of the app',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 20),

        Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue.shade50,
            border: BoxBorder.all(color: Colors.blue.shade200, width: 2)
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                  child: Image(
                    height: 50,
                    width: 60,
                    image: AssetImage('Assets/check-box.png'),
                  fit: BoxFit.cover,
                  ),
                ),
              SizedBox(width: 10),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Daily Tasks',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    Text('Manage your to do list')
                  ],
                ),
              )
              
            ],
          ),
        ),
      ],
    ),)
    ,
    );
  }
}
