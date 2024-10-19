import 'package:d_button/d_button.dart';
import 'package:final_project/app/core/app_asset.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/home/controllers/home_controller.dart';
import 'package:final_project/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeHeader extends GetView<HomeController> {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () { Get.toNamed(Routes.USER);},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(AppAsset.icGoogle, height: 40, width: 40),
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
              const Text(
                'Apih', 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              )
            ],
          )
        ),
        const Spacer(),
        DButtonFlat(
          mainColor: AppColor.secondaryColor,
          splashColor: AppColor.secondaryColor,
          radius: 8,
          // borderColor: AppColor.primaryColor,
          child: Icon(
            Icons.history_toggle_off_rounded,
            color: AppColor.secondaryColor,
          ),
        )
      ]
    );
  }
}