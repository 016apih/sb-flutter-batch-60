import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnColor,
    required this.textColor,
    required this.btnText,
  });
  final Color btnColor;
  final String btnText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.blue,
                width: 1
              )
            ),
          ), 
          child: Text(
            btnText,
            style: GoogleFonts.arimo(color: textColor),
          ),
        ),
      )
    );
  }
}