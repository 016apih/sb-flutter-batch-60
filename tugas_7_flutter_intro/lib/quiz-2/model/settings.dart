import 'package:flutter/material.dart';

class SettingsModel {
  IconData icon;
  String title;
  String desc;

  SettingsModel({required this.icon, required this.title, required this.desc});
}

List <SettingsModel> settingData = [
  SettingsModel(
    icon: Icons.person,
    title: "Profile settings",
    desc: "Settings regarding your profile"
  ),
  SettingsModel(
    icon: Icons.newspaper,
    title: 'News settings',
    desc: 'Choose your favourit' 
  ),
  SettingsModel(
    icon: Icons.border_all_rounded,
    title: 'Notifications',
    desc: 'When would you like' 
  ),
  SettingsModel(
    icon: Icons.folder, 
    title: 'Subscriptions',
    desc: 'Currently, you are in Starter Plan' 
  ),
  SettingsModel(
    icon: Icons.bug_report, 
    title: 'Bug report',
    desc: 'Report bugs very easy' 
  ),
  SettingsModel(
    icon: Icons.share, 
    title: 'Share the app',
    desc: 'Share on social media networks' 
  ),
];