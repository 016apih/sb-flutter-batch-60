import 'package:final_project/app/data/services/home_service.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeService());
    Get.lazyPut<HomeController>(
      () => HomeController(Get.find<HomeService>()),
    );
  }
}
