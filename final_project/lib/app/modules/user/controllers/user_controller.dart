import 'package:final_project/app/data/models/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  //TODO: Implement UserController

  final count = 0.obs;
  final profile = sampleUser[0];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
