import 'package:get/get_navigation/src/routes/get_route.dart';
import '../Bindings/LoginBinding.dart';
import '../Views/Login.dart';
import 'AppRoute.dart';

class AppPage {

  static final List<GetPage> pages = [
    GetPage(name: AppRoute.login, page: ()=> Login(),binding: LoginBinding()),
  ];
}
