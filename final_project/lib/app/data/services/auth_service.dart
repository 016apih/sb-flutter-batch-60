import 'package:dio/dio.dart';
import 'package:final_project/app/data/models/auth_model.dart';
import 'package:final_project/app/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Dio dio = Dio();
  static const host = 'https://final-project-go-batch-58.up.railway.app';

  Future <dynamic> login(String email, String password) async {
    try {
      final resp = await dio.post('$host/api/login', data: {
        'username': email, 
        'password': password
      });
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final data = resp.data['data'];

        print('>>>>>>>>>>>>>>>>>> $resp');
        // UserCredential userAuth = await FirebaseAuth.instance.signInWithEmailAndPassword(
        //   email: email, 
        //   password: password
        // );
        // print('>>>>>>>>>>>>>>>>>> $data $userAuth,');
        return data;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future <dynamic> register(String email, String password) async{
    try {
      final resp = await dio.post('$host/api/register', data: {
        "role_id": 2,
        "username": email,
        "email": email,
        "password": password,
        "address": "-",
        "no_hp": "-"
      });
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        final data = resp.data['data'];

        UserCredential userAuth = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password
        );
        return { userAuth, data };
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return e;
    }
  }
}