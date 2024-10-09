import 'package:get/get.dart';
import 'package:tugas_7_flutter_intro/tugas-11/model/user_model.dart';
import 'package:tugas_7_flutter_intro/tugas-11/service/user_service.dart';

class UserControler extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchDataUser();
  }

  bool isLoading = false;
  List<UserModel> users = [];
  UserModel? user;

  void fetchDataUser() async {
    users = await UserService().fetchDataUser();
    update(['list_user']);
  }

  void fetchDetailUser(int userId) async {
    isLoading = true;
    user = await UserService().detailUser(userId);
    isLoading = false;
    update(['detail_user']);
  }
}