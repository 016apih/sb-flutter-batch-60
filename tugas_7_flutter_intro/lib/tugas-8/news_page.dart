import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_7_flutter_intro/tugas-8/custom/button/custom_button.dart';

class NewsPage extends StatelessWidget{
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 86, left: 30, right: 30),
              width: double.infinity,
              height: 330,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/news_page.png")
                ),
              ),
            ),
            SizedBox(height: 37),
            Text(
              'Yuk, Membaca Bersama\nSanber News',
              style: GoogleFonts.arimo(fontWeight: FontWeight.bold, fontSize: 21),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 21),
            Text(
              'Berita Terpercaya, Di Ujung Jari Anda',
              style: TextStyle(fontSize: 15),
            ),
            Spacer(),
            CustomButton(
              btnColor: Colors.blue,
              textColor: Colors.white,
              btnText: "Masuk"
            ),
            SizedBox(height: 21),
            CustomButton(
              btnColor: Colors.white,
              textColor: Colors.blue,
              btnText: "Mendaftar"
            ),
          ],
        )
      ),
    );
  }
}