import 'package:final_project/app/data/services/auth_service.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthService());
    Get.lazyPut<AuthController>(
      () => AuthController(Get.find<AuthService>()),
    );
  }
}
