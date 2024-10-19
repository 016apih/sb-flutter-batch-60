import 'package:final_project/app/data/models/book_model.dart';
import 'package:final_project/app/data/models/category_model.dart';
import 'package:final_project/app/data/models/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final books = sampleBuku;
  final category = sampleCategories;
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
