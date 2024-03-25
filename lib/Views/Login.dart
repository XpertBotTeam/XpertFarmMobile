import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../Controllers/LoginController.dart';

class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center( // Wrapping SingleChildScrollView with Center
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Login", style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1),
                        fontWeight: FontWeight.bold, fontSize: 40)),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Email"),
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.email,
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Password"),
                      obscureText: true, // for hide password
                      controller: controller.password,
                    ),
                    SizedBox(height: 20,),
                    Center(child: TextButton(onPressed: () {}, child: Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),))),
                    SizedBox(height: 20,),
                    MaterialButton(
                      onPressed: () {},
                      color: Color.fromRGBO(49, 39, 79, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 50,
                      child: Center(
                        child: Text("Login", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Center(child: TextButton(onPressed: () {}, child: Text("Create Account", style: TextStyle(color: Color.fromRGBO(49, 39, 79, .6)),))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

