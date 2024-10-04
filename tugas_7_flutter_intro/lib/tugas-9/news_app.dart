import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_7_flutter_intro/tugas-9/card/heroCard.dart';
import 'package:tugas_7_flutter_intro/tugas-9/card/latestCard.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/menu.png")
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Center(
                      child: Text(
                        "NewsApp", 
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30, width: 30),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Herocard(
                        category: "TECHNOLOGY",
                        time: "3 min ago",
                        title: "Microsoft launches a deepfake detector tool ahead of US election",
                        img: "news1.png",
                      ),
                      SizedBox(width: 20),
                      Herocard(
                        category: "TECHNOLOGY",
                        time: "5 min ago",
                        title: "image ke dua",
                        img: "news2.png",
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Latest News',
                      style: GoogleFonts.poppins(fontSize: 12, color: const Color.fromARGB(255, 96, 96, 96)),
                    ),
                    const Spacer(),
                    Container(
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/arrow-forward-circle-outline.png")
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      Latestcard(
                        category: "Technologi",
                        title: "Insurtech startup PasarPolis gets \$54 million — Series B", 
                        img: "news3.png"
                      ),
                      Latestcard(
                        category: "Technologi",
                        title: "The IPO parade continues as Wish files, Bumble targets", 
                        img: "news4.png"
                      ),
                      Latestcard(
                        category: "Technologi",
                        title: "Hypatos gets \$11.8M for a deep learning approach", 
                        img: "news5.png"
                      ),
                    ],
                  )
                )
              ],
            ),
          ),
        )
    );
  }
}