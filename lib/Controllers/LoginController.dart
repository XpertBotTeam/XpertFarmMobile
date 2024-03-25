
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

  late SharedPreferences prefs;

  @override
  void onInit() async
  {
    super.onInit();
    prefs = await SharedPreferences.getInstance();

    if(prefs.getString('token')!= null)
    {
      Get.offNamed(AppRoute.home);
    }

  }
  void login() async
  {
    User user = User(email: email.value.text ,password:password.value.text, name: '', phone: '');
    String request_body = user.toJson();
    //send to server
    // var post = await DioClient().getInstance().post('/login',data: request_body);

    //if(post.statusCode == 200)
    // {
     // prefs.setString('token',post.data['token']);
     //  Get.offNamed(AppRoute.home);
      // navigator?.pushNamed(AppRoute.home);
   // }
  }


}