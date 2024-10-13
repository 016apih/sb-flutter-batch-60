import 'package:dev_get_cli/app/core/app_asset.dart';
import 'package:dev_get_cli/app/modules/home/widget/home_card_task_item.dart';
import 'package:flutter/material.dart';
// import 'package:go'
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';
import 'package:dev_get_cli/app/core/app_color.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  refresh(){}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Stack(
        children: [
          Container(
            color: AppColor.primaryColor,
            height: 140,
          ),
          RefreshIndicator(
            onRefresh: () => refresh(),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.all(20),
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(AppAsset.profile, height: 40, width: 40),
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
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        surfaceTintColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        backgroundColor: Colors.white
                      ),
                      child: const Text(
                        "22 juni 2021",
                        style: TextStyle(color: AppColor.defaultText),
                      )
                    )
                  ],
                ),
                const SizedBox(height: 24),
                buildSearch(),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tasks',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: AppColor.titleText,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20),
                    GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      children: [
                        HomeCardTaskItem(asset: AppAsset.queueBg, status: "Queue", total: 5),
                        HomeCardTaskItem(asset: AppAsset.reviewBg, status: "Review", total: 5),
                        HomeCardTaskItem(asset: AppAsset.approvedBg, status: "Approved", total: 5),
                        HomeCardTaskItem(asset: AppAsset.rejectedBg, status: "Rejected", total: 5),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Progress Tasks',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: AppColor.titleText,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20),
                    // Center(child: CircularProgressIndicator()),
                    ListView.builder(
                      itemCount: 2,
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return buildItemProgres('Login Ui', '12 Augh 2024, 12:00');
                      }
                    )
                  ],
                ),
              ],
            )
          )
        ],
      )
    );
  }
  
  Widget buildItemProgres(title,dateStatus){
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        height: 80,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 6,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColor.titleText,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    dateStatus,
                    style: TextStyle(
                      color: AppColor.bodyText,
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(AppAsset.approvedIcon,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSearch() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search, color: AppColor.defaultText)
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'search task...',
                hintStyle: TextStyle(
                  color: AppColor.defaultText
                )
              ),
            )
          )
        ],
      ),
    );
  }
}
