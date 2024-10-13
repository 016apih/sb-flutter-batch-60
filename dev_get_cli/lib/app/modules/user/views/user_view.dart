import 'package:d_button/d_button.dart';
import 'package:dev_get_cli/app/core/app_asset.dart';
import 'package:dev_get_cli/app/core/app_color.dart';
import 'package:dev_get_cli/app/core/custome/app_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          buildHeader(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'search task...',
                      hintStyle: TextStyle(
                        color: AppColor.scaffoldColor
                      )
                    ),
                  )
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password...',
                            hintStyle: TextStyle(
                              color: AppColor.scaffoldColor
                            )
                          ),
                        )
                      ),
                      Icon(Icons.remove_red_eye),
                    ],
                  )
                ),
                SizedBox(height: 10),
                AppButton.primary('LOGIN', (){}),
              ],
            )
          )
        ],
      )
    );
  }

  Widget buildHeader(){
    return AspectRatio(
      aspectRatio: 0.8,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            bottom: 80,
            child: Image.asset(
              AppAsset.loginBg,
              fit: BoxFit.cover,
            )
          ),
          Positioned.fill(
            top: 120,
            bottom: 80,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColor.scaffoldColor,
                    Colors.transparent,
                  ],
                )
              )
            )
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  AppAsset.logo,
                  height: 120,
                  width: 120,
                ),
                SizedBox(width: 20),
                RichText(
                  text: TextSpan(
                    text: 'Monitoring\n',
                    style: TextStyle(
                      color: AppColor.defaultText,
                      fontSize: 30,
                      height: 1.4
                    ),
                    children: [
                      TextSpan(text: 'with '),
                      TextSpan(
                        text: 'Tusk', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ]
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
