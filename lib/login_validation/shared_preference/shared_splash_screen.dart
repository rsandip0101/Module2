import 'package:flutter/material.dart';
import 'package:module_2/login_validation/shared_preference/shared_home_page.dart';
import 'package:module_2/login_validation/shared_preference/shared_login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedSplashScreen extends StatefulWidget {
  const SharedSplashScreen({super.key});

  @override
  State<SharedSplashScreen> createState() => _SharedSplashScreenState();
}

class _SharedSplashScreenState extends State<SharedSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateNext();

  }
  void navigateNext()async{
    await Future.delayed(Duration(seconds: 2));

    final prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isloggedIn')??false;

    if(isLoggedIn){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SharedHomePage()));
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SharedLoginPage()));
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            Text('10 sec')
          ],
        ),
      )
      );
  }
}
