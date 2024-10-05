import 'package:flutter/material.dart';
import 'package:tugas_7_flutter_intro/quiz-2/model/settings.dart';
import 'package:tugas_7_flutter_intro/theme/app_asset.dart';
import 'package:tugas_7_flutter_intro/theme/app_color.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAsset.icMenu)
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAsset.icSearch)
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'Telegraf',
                  fontSize: 36,
                  fontWeight: FontWeight.w900
                )
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.separated(
                  itemCount: settingData.length,
                  separatorBuilder: (context, index) {
                    if(index == 3){
                      return const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 22),
                          Text(
                            'Other',
                            style: TextStyle(
                              fontFamily: 'Telegraf',
                              fontSize: 26,
                            )
                          ),
                          SizedBox(height: 20),
                        ],
                      );
                    } else {
                      return const SizedBox(height: 20);
                    }
                  },
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(
                          height: 56,
                          width: 56,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              backgroundColor: const Color.fromRGBO(20, 30, 40, 0.01), 
                              foregroundColor: blackSecondary,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            ),
                            child: Icon(
                              settingData[index].icon,
                              color: blackSecondary,
                            )
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              settingData[index].title,
                              style: const TextStyle(
                                fontFamily: 'Telegraf',
                                fontSize: 14,
                                color: blackSecondary,
                              )
                            ),
                            const SizedBox(height: 5),
                            Text(
                              settingData[index].desc,
                              style: TextStyle(
                                fontFamily: 'Telegraf',
                                fontSize: 12,
                                color: blackSecondary.withOpacity(0.48)
                              )
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 16,
                          height: 16,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppAsset.icArrow)
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                ),
              )
            ]
          ),
        )
      )
    );
  }
}