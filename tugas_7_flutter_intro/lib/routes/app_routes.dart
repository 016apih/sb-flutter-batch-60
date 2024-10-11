import 'package:get/route_manager.dart';
import 'package:tugas_7_flutter_intro/quiz-2/settings.dart';
import 'package:tugas_7_flutter_intro/routes/app_routes_named.dart';
import 'package:tugas_7_flutter_intro/materi/materiRoutingManagement.dart';
import 'package:tugas_7_flutter_intro/materi/materialAppScaffold.dart';
import 'package:tugas_7_flutter_intro/tugas-10/bottom_navbar.dart';
import 'package:tugas_7_flutter_intro/tugas-11/list_user.dart';
import 'package:tugas_7_flutter_intro/tugas-12/register.dart';
import 'package:tugas_7_flutter_intro/tugas-12/signin.dart';
import 'package:tugas_7_flutter_intro/tugas-7-flutter-info/counter_app.dart';
import 'package:tugas_7_flutter_intro/tugas-8/news_page.dart';
import 'package:tugas_7_flutter_intro/tugas-9/detail_news_app.dart';
import 'package:tugas_7_flutter_intro/tugas-9/news_app.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesNamed.homePage, page: () => HomePageNew() ),
    GetPage(name: AppRoutesNamed.materiRouting, page: () => Materiroutingmanagement() ),
    GetPage(name: AppRoutesNamed.tugas7, page: () => MyHomePage(title: 'Tugas - 7 Counter Apps') ),
    GetPage(name: AppRoutesNamed.tugas8, page: () => NewsPage() ),
    GetPage(name: AppRoutesNamed.tugas9, page: () => NewsApp() ),
    GetPage(name: AppRoutesNamed.tugas9Detail, page: () => DetailNewsApp() ),
    GetPage(name: AppRoutesNamed.tugas10, page: () => BottomNavbar() ),
    GetPage(name: AppRoutesNamed.quiz2, page: () => Settings() ),
    GetPage(name: AppRoutesNamed.tugas11, page: () => UserPage() ),
    GetPage(name: AppRoutesNamed.tugas12Register, page: () => RegisterPage() ),
    GetPage(name: AppRoutesNamed.tugas12SigIn, page: () => SignInPage() ),
  ];
}