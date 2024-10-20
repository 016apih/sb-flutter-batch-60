import 'package:final_project/app/data/models/auth_model.dart';
import 'package:final_project/app/data/models/user_model.dart';
import 'package:final_project/app/data/services/auth_service.dart';
import 'package:final_project/app/modules/auth/views/auth_login_view.dart';
import 'package:final_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController(this._authService);
  final AuthService _authService;

  final count = 0.obs;
  
  final TextEditingController emailController = TextEditingController(text: 'a@gmail.com');
  final TextEditingController pwdController = TextEditingController(text: '1111111');
  final TextEditingController rePwdController = TextEditingController(text: '');

  var isObscure = true;
  var reIsObscure = true;
  var token = '';
  TUser? profile = null;

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

  void onChangeEmail(String? val) {
    emailController.text = val ?? '';
    update();
  }

  void onObscure(){
    isObscure = !isObscure;
    update(['isObscure']);
  }
  void onChangePassword(String? val) {
    pwdController.text = val ?? '';
    update();
  }
  void onReObscure(){
    reIsObscure = !reIsObscure;
    update(['reIsObscure']);
  }
  void onChangeRePassword(String? val) {
    rePwdController.text = val ?? '';
    update();
  }

  void onLogin() async {
    final a = await _authService.login(emailController.text, pwdController.text);
    if(a != null){
      TLogin respData = TLogin.fromJson(a);
      profile = TUser.fromJson(respData.data);
      token = respData.token;

      Get.toNamed(Routes.HOME);
      update(['login']);
    } else {
      print('login failed $emailController.text, $pwdController.text');
    }
  }

  void onRegister() async {
    final a = await _authService.register(emailController.text, pwdController.text);
    if(a != null){
      Get.to(() => AuthLoginView());
    } else {
      print('register failed $emailController.text, $pwdController.text, $a');
    }
  }
}
