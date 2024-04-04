
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/User.dart';
import '../Routings/AppRoute.dart';

class LoginController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


//test push
  @override
  void onInit() async
  {
    super.onInit();
  }
  void login() async
  {
    User user = User(email: email.value.text ,password:password.value.text, name: '', phone: '');
    String request_body = user.toJson();
    //send to server

  }


}