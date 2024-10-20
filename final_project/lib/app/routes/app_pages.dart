import 'package:final_project/app/modules/auth/views/auth_login_view.dart';
import 'package:final_project/app/modules/auth/views/auth_register_view.dart';
import 'package:final_project/app/modules/home/views/home_detail_view.dart';
import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTHLOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      bindings: [
        HomeBinding(),
        AuthBinding()
      ]
    ),
    GetPage(
      name: _Paths.DETAILBUKU,
      page: () => const HomeDetailView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.AUTHLOGIN,
      page: () => const AuthLoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.AUTHREGISTER,
      page: () => const AuthRegisterView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      bindings: [ 
        UserBinding(),
        AuthBinding()
      ]
    ),
  ];
}
