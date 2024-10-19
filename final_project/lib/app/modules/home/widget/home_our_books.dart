import 'package:d_button/d_button.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/home/views/home_detail_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:final_project/app/modules/home/controllers/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeOurBooks extends GetView<HomeController> {
  const HomeOurBooks({ super.key });

  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<HomeController>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GetBuilder(
          id: 'books',
          init: homeC,
          builder: (_) => GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: List.generate(homeC.books.length, (index){
              return DButtonShadow(
                padding: EdgeInsets.all(0),
                splashColor: Colors.white,
                onClick: () => {},
                radius: 10,
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
                            homeC.books[index].imageUrl,
                            width: double.infinity,
                            height: 180,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: DButtonShadow(
                              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              width: 50,
                              height: 20,
                              mainColor: AppColor.secondaryColor,
                              splashColor: AppColor.secondaryColor,
                              onClick: () => {print('nover')},
                              radius: 10,
                              child: Text(
                                "Novel",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                    SizedBox(height: 10),
                    Text(
                      homeC.books[index].title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: AppColor.titleText,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Penulis: ${homeC.books[index].author}',
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        color: AppColor.titleText
                      ),
                    ),
                    Text(
                      'Penerbit: ${homeC.books[index].releaseYear}',
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        color: AppColor.titleText,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: DButtonBorder(
                        borderColor: AppColor.secondaryColor,
                        width: 90,
                        height: 20,
                        // mainColor: AppColor.secondaryColor,
                        splashColor: Colors.white,
                        onClick: () => {Get.to(() => HomeDetailView())},
                        radius: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.details_outlined,
                              color: AppColor.primaryColor,
                              size: 10,
                            ),
                            Text(
                            " Detail",
                            style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 11
                            ),
                          )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}