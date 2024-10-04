import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Latestcard extends  StatelessWidget {
  const Latestcard({
    super.key,
    required this.category,
    // required this.time,
    required this.title,
    required this.img,
  });

  final String category;
  // final String time;
  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$img'), // Lokasi gambar
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: GoogleFonts.poppins(
                    fontSize: 12, 
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 96, 96, 96)
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w900),
                  softWrap: true,
                  // overflow: TextOverflow.visible,
                )
              ],
            )
        )
      ],
    );
  }
}