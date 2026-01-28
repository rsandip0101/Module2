import 'package:flutter/material.dart';
import 'package:module_2/login_validation/shared_preference/shared_register_page.dart';

class SharedHomePage extends StatefulWidget {
  const SharedHomePage({super.key});

  @override
  State<SharedHomePage> createState() => _SharedHomePageState();
}

class _SharedHomePageState extends State<SharedHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Shared_home_page'),
        actions: [TextButton(onPressed: (){
          setState(() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SharedRegisterPage()));
          });
        }, child: Text("Logout",style: TextStyle(fontSize: 25),))],
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
