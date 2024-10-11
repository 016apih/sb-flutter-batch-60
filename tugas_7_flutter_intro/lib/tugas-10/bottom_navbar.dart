import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tugas_7_flutter_intro/quiz-2/settings.dart';
import 'package:tugas_7_flutter_intro/routes/app_routes_named.dart';
import 'package:tugas_7_flutter_intro/tugas-9/news_app.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    super.key
  });

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currIndex = 0;

  final List<Widget> _childresn = [
    const NewsApp(),
    const SearchPage(),
    const ProfilePage()
  ];

  void onTabTapped(int index){
    setState(() {
      _currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childresn[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ]
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Search Page"),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Profile Page"),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: (){ Get.toNamed(AppRoutesNamed.tugas8); },
            // onPressed: (){
            //   Navigator.pushNamed(context, '/tugas8');
            // }, 
            child: const Text(
              'Logout'
            )
          )
        ],
      )
    );
  }
}