import 'package:final_project/app/data/models/book_model.dart';
import 'package:final_project/app/data/models/category_model.dart';
import 'package:final_project/app/data/models/user_model.dart';
import 'package:final_project/app/data/services/home_service.dart';
import 'package:final_project/app/modules/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this._homeService);
  final HomeService _homeService;

  final authC = Get.find<AuthController>();
  //TODO: Implement HomeController

  final count = 0.obs;
  var books = sampleBuku;
  final category = sampleCategories;
  final profile = sampleUser[0];

  @override
  void onInit() {
    super.onInit();
    getBooks();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getBooks() async {
    books = await _homeService.getBooks(authC.token);
    update(['books']);
    print(books);
  }

  void increment() => count.value++;
}
