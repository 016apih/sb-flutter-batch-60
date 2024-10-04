import 'package:flutter/material.dart';
import 'package:tugas_7_flutter_intro/materi/materialAppScaffold.dart';
import 'package:tugas_7_flutter_intro/tugas-7-flutter-info/counter_app.dart';
import 'package:tugas_7_flutter_intro/tugas-8/news_page.dart';
import 'package:tugas_7_flutter_intro/tugas-9/detail_news_app.dart';
import 'package:tugas_7_flutter_intro/tugas-9/news_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelas Flutter Mobile Batch 60',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Tugas - 7 Counter Apps'),
      initialRoute: "/tugas9Detail",
      routes: {
        "/home": (context) => HomePageNew(),
        "/tugas7": (context) => const MyHomePage(title: 'Tugas - 7 Counter Apps'),
        "/tugas8": (context) => const NewsPage(),
        "/tugas9": (context) => const NewsApp(),
        "/tugas9Detail": (context) => const DetailNewsApp(),
      }
    );
  }
}