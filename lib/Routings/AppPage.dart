import 'package:get/get_navigation/src/routes/get_route.dart';
import '../Bindings/HomeBinding.dart';
import '../Bindings/LoginBinding.dart';
import '../Bindings/RegistrationBinding.dart';
import '../Views/Home.dart';
import '../Views/Login.dart';
import '../Views/Registration.dart';
import 'AppRoute.dart';

class AppPage {

  static final List<GetPage> pages = [
    GetPage(name: AppRoute.login, page: ()=> Login(),binding: LoginBinding()),
    GetPage(name: AppRoute.register, page: ()=> Registration(),binding: RegistrationBinding()),
    GetPage(name: AppRoute.home, page: ()=> Home(),binding: HomeBinding()),
  ];
}
