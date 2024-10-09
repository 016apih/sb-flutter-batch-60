import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tugas_7_flutter_intro/tugas-13-getX/controler/user_controler.dart';

class DetailUserWithGetXPage extends StatefulWidget {
  const DetailUserWithGetXPage({
    super.key,
  });

  @override
  State<DetailUserWithGetXPage> createState() => _DetailUserWithGetXPageState();
}

class _DetailUserWithGetXPageState extends State<DetailUserWithGetXPage> {

  @override
  Widget build(BuildContext context) {
    final userC = Get.put(UserControler());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail User Page"),
      ),
      body:  GetBuilder(
        id: 'detail_user',
        init: userC,
        builder: (_) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: userC.isLoading ?
              const Center(child: CircularProgressIndicator())
            : ListTile(
              title: Text('${userC.user?.firstName} ${userC.user?.lastName}'),
              leading: Image.network(userC.user?.avatar ?? ''),
              subtitle: Text(userC.user?.email ?? ''),
          )
        ),
      )
    );
  }
}