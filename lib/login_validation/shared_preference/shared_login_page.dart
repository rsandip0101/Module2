import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_2/login_validation/shared_preference/shared_home_page.dart';
import 'package:module_2/login_validation/shared_preference/shared_register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLoginPage extends StatefulWidget {
  const SharedLoginPage({super.key});

  @override
  State<SharedLoginPage> createState() => _SharedLoginPageState();
}

class _SharedLoginPageState extends State<SharedLoginPage> {
  bool eye =true;
  final formkey = GlobalKey<FormState>();
  final _usernamectrl = TextEditingController();
  final _passwordctrl = TextEditingController();

  void login(BuildContext context)async{
    if(!formkey.currentState!.validate()){
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    String savedusername = prefs.getString('username')??" ";
    String savedpassword = prefs.getString('password')??" ";

    if (_usernamectrl.text == savedusername && _passwordctrl.text == savedpassword){
      await prefs.setBool('isloggedIn', true);

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SharedHomePage()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid login')));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueGrey,
          title: Text('Shared Register page'),
          centerTitle: true,
          leading: Icon(Icons.home_filled),
          actions: [Icon(Icons.search,color: Colors.black,),SizedBox(width: 10)],
        ),

        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    controller: _usernamectrl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Enter username';
                      }
                      return null;
                    }
                ),
                SizedBox(height: 10),
                TextFormField(
                    controller: _passwordctrl,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    obscureText: eye,
                    decoration: InputDecoration(
                      hintText: 'password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              eye =!eye;
                            });
                          },
                          icon: Icon(eye? Icons.visibility_off:Icons.visibility)
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value == null || value.length != 6){
                        return 'Enter 6 digit password';
                      }
                      return null;
                    }
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 40,width: 200,
                  child: ElevatedButton(
                      onPressed: (){
                        login(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Login')
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SharedRegisterPage()));
                }, child: Text("Register"))
              ],
            ),
          ),
        )
    );

  }
}
