import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCardTaskItem extends StatelessWidget {
  const HomeCardTaskItem({
    super.key,
    required this.asset,
    required this.status,
    required this.total
  });

  final String asset;
  final String status;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            status,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 6),
          Text(
            '$total tasks',
            style: GoogleFonts.montserrat(
              color: Colors.white70,
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}