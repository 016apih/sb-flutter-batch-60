import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    final userC = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              // width: 150,
              child:  Image.network(
                'https://final-project-go-batch-58.up.railway.app/attachments/avatar.jpg',
                height: 150,
                // width: 150,
                fit: BoxFit.cover,
              )
            ),
            SizedBox(height: 20),
            Text(
              'Nama: ${userC.profile.username}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Email: ${userC.profile.email}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'No Hp: ${userC.profile.noHp}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Alamat: ${userC.profile.address ?? '-'}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ) 
      ),
    );
  }
}
