import 'package:d_button/d_button.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCategoryBooks extends GetView<HomeController> {
  const HomeCategoryBooks({ super.key });

  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<HomeController>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "List Buku: ",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 25,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 10), 
            itemCount: homeC.category.length,
            itemBuilder: (context, index) {
              return DButtonShadow(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical:2),
                mainColor: AppColor.secondaryColor,
                splashColor: AppColor.secondaryColor,
                onClick: () => {},
                radius: 10,
                child: Text(
                  homeC.category[index].name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  ),
                ),
              );
            }, 
          ),
        ),
      ],
    );
  }
}