import 'package:d_button/d_button.dart';
import 'package:d_input/d_input.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/auth/widget/auth_footer.dart';
import 'package:final_project/app/modules/auth/widget/auth_header.dart';
import 'package:final_project/app/modules/auth/widget/auth_with_provider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthRegisterView extends GetView<AuthController> {
  const AuthRegisterView({super.key});
  
  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 20),
          child: ListView(
            children: [
              AuthHeader(),
              SizedBox(height: 50),
              DInputMix(
                title: 'Email',
                hint: 'Email',
                boxColor: Colors.white,
                controller: authC.emailController,
                boxRadius: 8,
                boxBorder: Border.all(
                  width: 2,
                  color: AppColor.primaryColor,
                ),
                inputOnChanged: (e) => authC.onChangeEmail(e),
              ),
              SizedBox(height: 10),
              GetBuilder(
                init: authC,
                id: 'isObscure',
                builder: (_) => DInputMix(
                  title: 'Password',
                  hint: 'Password',
                  obscure: authC.isObscure,
                  boxColor: Colors.white,
                  controller: authC.pwdController,
                  boxRadius: 8,
                  boxBorder: Border.all(
                    width: 2,
                    color: AppColor.primaryColor,
                  ),
                  suffixIcon: IconSpec(
                    radius: 24,
                    icon:  authC.isObscure ? Icons.visibility_off : Icons.visibility,
                    color: AppColor.primaryColor,
                    onTap: () => authC.onObscure(),
                  ),
                  inputOnChanged: (e) => authC.onChangePassword(e),
                ),
              ),
              SizedBox(height: 10),
              GetBuilder(
                init: authC,
                id: 'reIsObscure',
                builder: (_) =>
                  DInputMix(
                  title: 'Konfirmasi Password',
                  hint: 'Konfirmasi Password',
                  obscure: authC.reIsObscure,
                  boxColor: Colors.white,
                  controller: authC.rePwdController,
                  boxRadius: 8,
                  boxBorder: Border.all(
                    width: 2,
                    color: AppColor.primaryColor,
                  ),
                  suffixIcon: IconSpec(
                    radius: 24,
                    icon:  authC.isObscure ? Icons.visibility_off : Icons.visibility,
                    color: AppColor.primaryColor,
                    onTap: () => authC.onReObscure(),
                  ),
                  inputOnChanged: (e) => authC.onChangeRePassword(e),
                ),
              ),
              SizedBox(height: 30),
              DButtonBorder(
                mainColor: Colors.white,
                height: 52,
                radius: 8,
                onClick: () => authC.onRegister(),
                borderColor: AppColor.primaryColor,
                child:  const Text(
                  'Daftar', 
                  style: TextStyle(
                    color: AppColor.secondaryColor,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              const SizedBox(height: 15),
              AuthWithProvider(typeForm: 'daftar'),
              const SizedBox(height: 20),
              AuthFooter(typeForm: 'daftar')
            ],
          ),
        )
      ),
    );
  }
}
