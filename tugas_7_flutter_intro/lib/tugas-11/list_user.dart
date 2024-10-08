import 'package:flutter/material.dart';
import 'package:tugas_7_flutter_intro/tugas-11/detail_user.dart';
import 'package:tugas_7_flutter_intro/tugas-11/model/user_model.dart';
import 'package:tugas_7_flutter_intro/tugas-11/service/user_service.dart';

class UserPage extends StatefulWidget {
  const UserPage({
    super.key
  });

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    users = await UserService().fetchDataUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
      ),
      body: ListView.builder(
        // itemCount: 2,
        itemCount: users.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailUserPage(
                  userId: users[index].id
                )
              )
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('${users[index].firstName} ${users[index].lastName}'),
              subtitle: Text(users[index].email),
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(users[index].avatar) 
                  )
                ),
              ),
            ),
          )
        )
      )
    );
  }
}