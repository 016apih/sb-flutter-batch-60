import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_7_flutter_intro/routes/app_routes_named.dart';
import 'package:tugas_7_flutter_intro/theme/app_asset.dart';
import 'package:tugas_7_flutter_intro/tugas-8/custom/button/custom_button.dart';

class NewsPage extends StatelessWidget{
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 86, left: 30, right: 30),
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAsset.news)
                  ),
                ),
              ),
              const SizedBox(height: 37),
              Text(
                'Yuk, Membaca Bersama\nSanber News',
                style: GoogleFonts.arimo(fontWeight: FontWeight.bold, fontSize: 21),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 21),
              const Text(
                'Berita Terpercaya, Di Ujung Jari Anda',
                style: TextStyle(fontSize: 15),
              ),
              const Spacer(),
              CustomButton(
                btnColor: Colors.blue,
                textColor: Colors.white,
                btnText: "Masuk",
                onTap: () { Get.toNamed(AppRoutesNamed.tugas12SigIn); },
                // onTap: (){
                //   Navigator.pushNamed(context, '/tugas10');
                // },
              ),
              const SizedBox(height: 21),
              CustomButton(
                btnColor: Colors.white,
                textColor: Colors.blue,
                btnText: "Mendaftar",
                onTap: () => Get.toNamed(AppRoutesNamed.tugas12Register),
              ),
            ],
          ),
        ),
      ),
    );
  }
}