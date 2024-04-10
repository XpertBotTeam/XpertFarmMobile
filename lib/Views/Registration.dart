import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/RegistrationController.dart';
import '../Routings/AppRoute.dart';

class Registration extends StatelessWidget {
  const Registration({super.key,});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                // Wrapping SingleChildScrollView with Center
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Registration",
                                style: TextStyle(
                                    color: Color.fromRGBO(49, 39, 79, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40)),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Username"),
                              keyboardType: TextInputType.name,
                              controller: controller.name,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Email"),
                              keyboardType: TextInputType.emailAddress,
                              controller: controller.email,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Phone"),
                              keyboardType: TextInputType.phone,
                              controller: controller.phone,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Password"),
                              obscureText: true, // for hide password
                              controller: controller.password,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Confirm Password"),
                              obscureText: true, // for hide password
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              onPressed: () {
                                controller.register();
                              },
                              color: Color.fromRGBO(49, 39, 79, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: 50,
                              child: Center(
                                child: Text(
                                  "Register",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Do you have an account?",
                                style: TextStyle(
                                    color: Color.fromRGBO(49, 39, 79, .6))),
                            Center(
                                child: TextButton(
                                    onPressed: () {
                                      Get.toNamed(AppRoute.login);
                                    },
                                    child: Text(
                                      "Login",
                                    ))),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
