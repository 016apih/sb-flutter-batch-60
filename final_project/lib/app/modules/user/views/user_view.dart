import 'package:d_button/d_button.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/auth/controllers/auth_controller.dart';
import 'package:final_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuthController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 150,
                // width: 150,
                child: Image.network(
                  'https://final-project-go-batch-58.up.railway.app/attachments/avatar.jpg',
                  height: 150,
                  // width: 150,
                  fit: BoxFit.cover,
                )
              ),
            ),
            SizedBox(height: 50),
            RichText(
              text: TextSpan(
                text: 'Username : ',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: AppColor.titleText,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text:authC.profile?.username,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal
                    ),
                  )
                ]
              )
            ),
            RichText(
              text: TextSpan(
                text: 'Email : ',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: AppColor.titleText,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text:authC.profile?.username,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal
                    ),
                  )
                ]
              )
            ),
            RichText(
              text: TextSpan(
                text: 'No Hp : ',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: AppColor.titleText,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text:authC.profile?.noHp,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal
                    ),
                  )
                ]
              )
            ),
            RichText(
              text: TextSpan(
                text: 'Alamat : ',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: AppColor.titleText,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text:authC.profile?.address,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal
                    ),
                  )
                ]
              )
            ),
            SizedBox(height: 50),
            DButtonBorder(
                mainColor: Colors.white,
                height: 52,
                radius: 8,
                onClick: () => Get.offAllNamed(Routes.AUTH),
                borderColor: AppColor.primaryColor,
                child:  const Text(
                  'Logout', 
                  style: TextStyle(
                    color: AppColor.secondaryColor,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
          ],
        ) 
      ),
    );
  }
}
