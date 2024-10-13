import 'package:d_button/d_button.dart';
import 'package:dev_get_cli/app/core/app_color.dart';
import 'package:flutter/material.dart';

class AppButton {
  static Widget primary(String title, VoidCallback? onCLick){
    return DButtonFlat(
      onClick: onCLick,
      height: 46,
      mainColor: AppColor.primaryColor,
      radius: 12,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}