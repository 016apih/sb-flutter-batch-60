import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tugas_7_flutter_intro/tugas-13-getX/controler/user_controler.dart';
import 'package:tugas_7_flutter_intro/tugas-13-getX/detail_user_with_getx.dart';

class UserPageWithGetX extends StatefulWidget {
  const UserPageWithGetX({
    super.key
  });

  @override
  State<UserPageWithGetX> createState() => _UserPageWithGetXState();
}

class _UserPageWithGetXState extends State<UserPageWithGetX> {

  @override
  Widget build(BuildContext context) {
    final userC = Get.put(UserControler());
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
      ),
      body: GetBuilder(
        id: 'list_user',
        init: userC,
        builder: (_) => ListView.builder(
          itemCount: userC.users.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              userC.fetchDetailUser(userC.users[index].id);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailUserWithGetXPage()
                )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('${userC.users[index].firstName} ${userC.users[index].lastName}'),
                subtitle: Text(userC.users[index].email),
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(userC.users[index].avatar) 
                    )
                  ),
                ),
              ),
            )
          )
        )
      )
      
      
    );
  }
}