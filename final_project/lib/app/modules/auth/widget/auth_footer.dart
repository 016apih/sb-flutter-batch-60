import 'dart:ffi';

import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/auth/views/auth_login_view.dart';
import 'package:final_project/app/modules/auth/views/auth_register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({ 
    super.key,
    required this.typeForm,
    this.marginTop
  });

  final String typeForm;
  final double? marginTop;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColor.secondaryColor,
          height: 3,
        ),
        SizedBox(height: marginTop ?? 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Belum punya akun? silahkan ',
              style: TextStyle(
                color: AppColor.bodyText
              ),
            ),
            InkWell(
              onTap: (){
                Get.offAll(() => typeForm == 'daftar' ? AuthLoginView() : AuthRegisterView());
              },
              child: Text(
                typeForm == 'daftar' ? 'masuk ' : 'mendaftar ', 
                style: TextStyle(color: Color(0xff3498Db)),
              ),
            ),
            const Text(
              'sekarang',
              style: TextStyle(
                color: AppColor.bodyText
              ),
            ),
          ],
        ),
      ],
    );
  }
}