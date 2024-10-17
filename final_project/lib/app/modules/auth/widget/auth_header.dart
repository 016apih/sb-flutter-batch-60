import 'package:final_project/app/core/app_asset.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({ super.key });

  @override
  Widget build(BuildContext context) {
    return Center(
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
      );
  }
}