import 'package:d_button/d_button.dart';
import 'package:final_project/app/core/app_asset.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/auth/controllers/auth_controller.dart';
import 'package:final_project/app/modules/home/controllers/home_controller.dart';
import 'package:final_project/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeHeader extends GetView<HomeController> {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>();

    return Row(
      children: [
        GestureDetector(
          onTap: () { Get.toNamed(Routes.USER);},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(AppAsset.icAvatar2, height: 40, width: 40),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
              GetBuilder(
                id: 'login',
                init: authC,
                builder: (_) => Text(
                authC.profile?.username ?? '', 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              )
              ),
            ],
          )
        ),
        const Spacer(),
        DButtonBorder(
          padding: EdgeInsets.all(0),
          borderColor: AppColor.primaryColor,
          mainColor: AppColor.secondaryColor,
          splashColor: AppColor.secondaryColor,
          radius: 10,
          child: Icon(
            Icons.logout,
            color: Colors.white,
            size: 20,
          ),
          onClick: () => Get.offAllNamed(Routes.AUTH),
        )
      ]
    );
  }
}