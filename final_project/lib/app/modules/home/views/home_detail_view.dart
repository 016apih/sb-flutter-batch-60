import 'package:d_button/d_button.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeDetailView extends GetView<HomeController> {
  const HomeDetailView({super.key});
  
  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<HomeController>();

    return Scaffold(
      // appBar: ,
      body: SafeArea(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Stack(
                children: [
                  Image.network(
                    homeC.books[0].imageUrl,
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: DButtonBorder(
                      borderColor: AppColor.primaryColor,
                      padding: EdgeInsets.all(0),
                      width: 30,
                      height: 30,
                      mainColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onClick: () => {Get.back()},
                      radius: 10,
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColor.primaryColor,
                      )
                      // Text(
                      //   "Novel",
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 11
                      //   ),
                      // ),
                    ),
                  )
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                children: [
                  Text(
                    homeC.books[0].title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      color: AppColor.titleText,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Penulis: ${homeC.books[0].author}',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: AppColor.titleText
                    ),
                  ),
                  Text(
                    'Penerbit: ${homeC.books[0].releaseYear}',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: AppColor.titleText,
                      // fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            )            
          ],
        ),
      )
    );
  }
}