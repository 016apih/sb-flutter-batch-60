import 'package:d_button/d_button.dart';
import 'package:final_project/app/core/app_asset.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/auth/views/auth_login_view.dart';
import 'package:final_project/app/modules/auth/widget/auth_footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAsset.logo)
                        )
                      ),
                    ),
                    SizedBox(width: 10),
                    const Text(
                      'Rumah \nBuku Aisyah',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 150),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Apa Buku Favorit mu?',
                      style: GoogleFonts.openSans(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                    ),
                    Text(
                      'kuy cari disini',
                      style: GoogleFonts.openSans(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 35
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 100),
              DButtonBorder(
                mainColor: Colors.white,
                height: 52,
                radius: 8,
                onClick: () => Get.offAll(() => AuthLoginView()),
                borderColor: AppColor.primaryColor,
                child:  const Text(
                  'Masuk', 
                  style: TextStyle(
                    color: AppColor.secondaryColor,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              const SizedBox(height: 40),
              AuthFooter(typeForm: 'home', marginTop: 40,),
            ],
          ),
        )
      ),
    );
  }
}
