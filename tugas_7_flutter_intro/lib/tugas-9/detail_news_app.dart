import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_7_flutter_intro/theme/app_asset.dart';

class DetailNewsApp extends StatelessWidget {
  const DetailNewsApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 375,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAsset.news6), // Lokasi gambar
                    fit: BoxFit.cover,
                    opacity: 63 // Menyesuaikan ukuran gambar dengan container
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft:Radius.circular(32), 
                    bottomRight: Radius.circular(32)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      // width: 40,
                      // height: 40,
                      child:  SizedBox(
                        width: 40,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            backgroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              side: BorderSide(
                                color: Colors.black,
                                width: 1
                              )
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_back, 
                            color: Colors.white,
                            // size: 14,
                          )
                        ),
                      )
                    ),
                  ],
                ), 
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(AppAsset.icAvatar), // Lokasi gambar
                                fit: BoxFit.contain,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          const SizedBox(width: 15, height: 15),
                          const Text("Samuel Newton"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "TECHNOLOGY",
                        style: GoogleFonts.poppins(
                          fontSize: 12, 
                          fontWeight: FontWeight.w900,
                          color: const Color.fromARGB(255, 96, 96, 96)
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "To build responsibly, tech needs to do more than just hire chief ethics officers",
                        style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w900),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "17 June, 2023 — 4:49 PM",
                        style: GoogleFonts.poppins(fontSize: 12, color: const Color.fromARGB(255, 96, 96, 96)),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: Color(0x141E2814),
                        height: 2
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of “leading” ethics at their companies.",
                        style: GoogleFonts.poppins(fontSize: 16),
                        softWrap: true,
                        // overflow: TextOverflow.visible,
                      ),
                    ],
                ),
              ),
            ],
          )
        )
      )
    );
  }
}