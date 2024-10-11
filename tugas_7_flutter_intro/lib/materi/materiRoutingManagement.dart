import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AppRoutesNamedM {
  static const pageSatu = '/';
  static const pageDua = '/page2';
  static const pageTiga = '/page3';
  static const pageEmpat = '/page4';
}

class AppRoutesM {
  static final routes = [
    GetPage(name: AppRoutesNamedM.pageSatu, page: () => PageSatu() ),
    GetPage(name: AppRoutesNamedM.pageDua, page: () => PageDua() ),
    GetPage(name: AppRoutesNamedM.pageTiga, page: () => PageTiga() ),
    GetPage(name: AppRoutesNamedM.pageEmpat, page: () => PageEmpat() ),
  ];
}

class Materiroutingmanagement extends StatelessWidget {
  const Materiroutingmanagement({ super.key });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutesM.routes,
      title: "Demo riuting management",
    );
  }
}

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("body page 1"),
    );
  }
}

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("body page 2"),
    );
  }
}

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("body page 3"),
    );
  }
}

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("body page 4"),
    );
  }
}
