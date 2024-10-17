import 'package:final_project/app/core/app_asset.dart';
import 'package:final_project/app/core/app_color.dart';
import 'package:flutter/material.dart';

class AuthWithProvider extends StatelessWidget {
  const AuthWithProvider({ 
    super.key,
    required this.typeForm
  });

  final String typeForm;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Color(0xffc0c0c0),
                  height: 3,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Atau $typeForm menggunakan',
                  style: TextStyle(color: Color(0xffc0c0c0)),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Color(0xffc0c0c0),
                  height: 3,
                )
              )
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 40,
            width: 40,
            child: ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                surfaceTintColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColor.primaryColor),
                  borderRadius: BorderRadius.circular(8)
                ),
                backgroundColor: Colors.white
              ),
              child:  Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAsset.icGoogle)
                  )
                ),
              ),
            ),
          ),
        ],
      ) 
    );
  }
}