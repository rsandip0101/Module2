import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_2/login_validation/shared_preference/shared_login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedRegisterPage extends StatefulWidget {
  const SharedRegisterPage({super.key});

  @override
  State<SharedRegisterPage> createState() => _SharedRegisterPageState();
}

class _SharedRegisterPageState extends State<SharedRegisterPage> {
  bool eye =true;
  final formkey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  void register(BuildContext context)async{
    if(!formkey.currentState!.validate()){
      return;
    }

   final prefs = await SharedPreferences.getInstance();//to get shared preference memmory from phone
   await prefs.setString('username', _usernameCtrl.text);
   await prefs.setString('password', _passwordCtrl.text);

   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration successful')));
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SharedLoginPage()));
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
                controller: _usernameCtrl,
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
                controller: _passwordCtrl,
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
                     register(context);
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                    child: Text('Login')
                ),
              )
            ],
            ),
          ),
        )
      );

  }
}
