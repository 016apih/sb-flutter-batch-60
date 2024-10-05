import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_7_flutter_intro/theme/app_asset.dart';

class Herocard extends StatelessWidget {
  const Herocard({
    super.key,
    required this.category,
    required this.time,
    required this.title,
    required this.img,
  });

  final String category;
  final String time;
  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: 311,
      height: 311,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img), // Lokasi gambar
          fit: BoxFit.cover,
          opacity: 63 // Menyesuaikan ukuran gambar dengan container
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                category,
                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w900, color: Colors.white),
              ),
              const Spacer(),
              Text(
                time,
                style: GoogleFonts.poppins(fontSize: 8, color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          Text(
            title,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAsset.icChat)
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Container(
                width: 17,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAsset.icBookmark)
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 19,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAsset.icArrow)
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}