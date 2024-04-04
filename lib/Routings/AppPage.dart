import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:xpertfarmmobile/Bindings/RegistrationBinding.dart';
import '../Bindings/LoginBinding.dart';
import '../Views/Login.dart';
import '../Views/Registration.dart';
import 'AppRoute.dart';

class AppPage {

  static final List<GetPage> pages = [
    GetPage(name: AppRoute.login, page: ()=> Login(),binding: LoginBinding()),
    GetPage(name: AppRoute.register, page: ()=> Registration(),binding: RegistrationBinding()),
  ];
}
