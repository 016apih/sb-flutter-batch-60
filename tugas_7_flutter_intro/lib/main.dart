import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:tugas_7_flutter_intro/routes/app_routes.dart';
import 'package:tugas_7_flutter_intro/routes/app_routes_named.dart';
import 'firebase_options.dart';

import 'package:tugas_7_flutter_intro/materi/materiRoutingManagement.dart';
import 'package:tugas_7_flutter_intro/tugas-13-getX/list_user_with_getx.dart';
import 'package:tugas_7_flutter_intro/materi/materialAppScaffold.dart';
import 'package:tugas_7_flutter_intro/quiz-2/settings.dart';
import 'package:tugas_7_flutter_intro/tugas-11/list_user.dart';
import 'package:tugas_7_flutter_intro/tugas-12/register.dart';
import 'package:tugas_7_flutter_intro/tugas-7-flutter-info/counter_app.dart';
import 'package:tugas_7_flutter_intro/tugas-8/news_page.dart';
import 'package:tugas_7_flutter_intro/tugas-9/detail_news_app.dart';
import 'package:tugas_7_flutter_intro/tugas-9/news_app.dart';
import 'package:tugas_7_flutter_intro/tugas-10/bottom_navbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kelas Flutter Mobile Batch 60',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.routes,
      initialRoute: AppRoutesNamed.tugas8,
    );

    // sebelum menggunakan GetX
    // return MaterialApp(
    //   title: 'Kelas Flutter Mobile Batch 60',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   // home: const MyHomePage(title: 'Tugas - 7 Counter Apps'),
    //   initialRoute: "/materi-routing",
    //   routes: {
    //     "/home": (context) => HomePageNew(),
    //     "/materi-routing": (context) => Materiroutingmanagement(),
    //     "/tugas7": (context) => const MyHomePage(title: 'Tugas - 7 Counter Apps'),
    //     "/tugas8": (context) => const NewsPage(),
    //     "/tugas9": (context) => const NewsApp(),
    //     "/tugas9Detail": (context) => const DetailNewsApp(),
    //     "/tugas10": (context) => const BottomNavbar(),
    //     "/quiz2": (context) => const Settings(),
    //     "/tugas11": (context) => const UserPage(),
    //     "/tugas12": (context) => const RegisterPage(),
    //     "/tugas13": (context) => const UserPageWithGetX(),
    //   }
    // );
  }
}