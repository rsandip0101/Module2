import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../appbar_curve.dart';


class StaticValidation extends StatefulWidget {
  const StaticValidation({super.key});

  @override
  State<StaticValidation> createState() => _StaticValidationState();
}

class _StaticValidationState extends State<StaticValidation> {
  final _formkey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _emailid = TextEditingController();
  final _mobileno = TextEditingController();
  final _password = TextEditingController();
  final _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
        ),
        margin: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Registration page",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(height: 10),
                Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Email id',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailid,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email id';
                    }
                    else if (!value.contains('@')){
                      return 'enter valid email id';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Mobile No:',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  //maxLength: 10, //to allow only 10 digits further not possible
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  controller: _mobileno,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null ||  value.length != 10) {
                      return 'Please enter 10 digit mobile no';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text('confirm password',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    )
                ),
                TextFormField(
                    obscureText: true,
                    controller: _confirmpassword,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value){
                      if (value==null || value.isEmpty){
                        return 'please enter something';
                      }
                      else if (value != _password.text){
                        return 'please enter same password';
                      }
                      return null;
                    }
                ),

                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: 330,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Registration successful"),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 5),
                          ),
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AppbarCurve()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Text('Register', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
