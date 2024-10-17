import 'package:d_button/d_button.dart';
import 'package:d_input/d_input.dart';

import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/auth/widget/auth_footer.dart';
import 'package:final_project/app/modules/auth/widget/auth_header.dart';
import 'package:final_project/app/modules/auth/widget/auth_with_provider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthLoginView extends GetView<AuthController> {
  const AuthLoginView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              AuthHeader(),
              SizedBox(height: 50),
              DInput(
                title: 'Email',
                label: 'email',
                hint: 'Email',
                isRequired: true,
                radius: BorderRadius.circular(8),
                style: TextStyle(
                  color: AppColor.primaryColor
                ),
                controller: TextEditingController()
              ),
              SizedBox(height: 10),
              DInputPassword(
                title: 'Password',
                label: 'password',
                hint: 'Password',
                isRequired: true,
                radius: BorderRadius.circular(8),
                controller: TextEditingController()
              ),
              SizedBox(height: 30),
              DButtonBorder(
                mainColor: Colors.white,
                height: 52,
                radius: 8,
                onClick: () {},
                borderColor: AppColor.primaryColor,
                child:  const Text(
                  'Masuk', 
                  style: TextStyle(
                    color: AppColor.secondaryColor,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              const SizedBox(height: 20),
              AuthWithProvider(typeForm: 'masuk'),
              const SizedBox(height: 50),
              AuthFooter(typeForm: 'masuk')
            ],
          ),
        )
      ),
    );
  }
}
