import 'package:flutter/material.dart';

class HomePageNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Hello WOrld"),
      ),
    );
  }
}