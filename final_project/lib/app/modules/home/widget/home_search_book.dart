import 'package:final_project/app/core/app_color.dart';
import 'package:flutter/material.dart';

class HomeSearchBook extends StatelessWidget {
  const HomeSearchBook({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.scaffoldColor,
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
                hintText: 'cari buku ...',
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