import 'package:dio/dio.dart';
import 'package:tugas_7_flutter_intro/tugas-11/model/user_model.dart';

class UserService {
  Dio dio = Dio();
  static const host = 'https://reqres.in/api/users';

  // void fetchDataUser() async {
  Future <List<UserModel>> fetchDataUser() async {
    try {
      final resp = await dio.get('$host?page2');

      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final data = resp.data['data'];

        List<UserModel> users = List.from(data.map((user) => UserModel.fromJson(user)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> detailUser(int id) async {
    try {
      final resp = await dio.get('$host/$id');

      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final data = resp.data['data'];

        UserModel user = UserModel.fromJson(data);
        return user;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}