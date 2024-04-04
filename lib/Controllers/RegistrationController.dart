import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../Core/Dialog.dart';
import '../Core/Network/DioClient.dart';
import '../Models/User.dart';
import '../Routings/AppRoute.dart';

class RegistrationController extends GetxController{
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool loading = false.obs;


  void register() async
  {
    try{
      loading.value = true;    //loader enable
      User user = User(name: name.value.text, email: email.value.text, phone:phone.value.text,password:password.value.text);
      String request_body = user.toJson();
      //send to server
      var post = await DioClient().getInstance().post('/register',data: request_body);
      print("response");
      print(post.data);
      if(post.statusCode == 200)
      {
        showSuccessDialog(Get.context!,"Success","User Registered Successfully",(){
          Get.offNamed(AppRoute.home);
        });
      }
    }catch(e)
    {
      loading.value = false; //loader disable
    }finally{
      loading.value = false; //loader disable
    }

  }

}