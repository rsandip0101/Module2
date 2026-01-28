import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Login();

}
class Login extends State{
  bool eye =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
          leading: Icon(Icons.home,fontWeight: FontWeight.bold,color: Colors.white,size: 30,),
        actions: [Icon(Icons.search,fontWeight: FontWeight.bold,color: Colors.white,size: 30)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  label: Text('username'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text('email id'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  label: Text('phone number'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: eye,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      eye =!eye;
                    });
                  }, icon: Icon(eye? Icons.visibility_off:Icons.visibility)),
                  label: Text('password'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('confirm password'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    child: Text('Sign up')),
              ),
              SizedBox(height: 20),
              CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('Assets/google.png'),
                //child: Icon(Icons.facebook,size: 40,),
              )
            ],
          ),
        ),
      ),
    );
  }

}