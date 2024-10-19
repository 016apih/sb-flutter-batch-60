import 'package:final_project/app/core/app_color.dart';
import 'package:final_project/app/modules/home/widget/home_category_books.dart';
import 'package:final_project/app/modules/home/widget/home_header.dart';
import 'package:final_project/app/modules/home/widget/home_our_books.dart';
import 'package:final_project/app/modules/home/widget/home_search_book.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColor.primaryColor,
            height: 180,
          ),
          ListView(
            padding: EdgeInsets.all(20),
            children: [
              SizedBox(height: 20),
              HomeHeader(),
              const SizedBox(height: 24),
              HomeSearchBook(),
              const SizedBox(height: 30),
              HomeCategoryBooks(),
              const SizedBox(height: 20),
              HomeOurBooks(),
            ],
          )
        ],
      ),
    );
  }
}
