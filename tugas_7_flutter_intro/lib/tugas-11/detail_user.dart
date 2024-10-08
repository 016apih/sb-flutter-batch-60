import 'package:flutter/material.dart';
import 'package:tugas_7_flutter_intro/tugas-11/model/user_model.dart';
import 'package:tugas_7_flutter_intro/tugas-11/service/user_service.dart';

class DetailUserPage extends StatefulWidget {
  const DetailUserPage({
    super.key,
    required this.userId
  });

  final int userId;

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  UserModel? user;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    isLoading = true;
    user = await UserService().detailUser(widget.userId);
    isLoading = false;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail User Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isLoading ?
          const Center(child: CircularProgressIndicator())
        : ListTile(
          title: Text('${user?.firstName} ${user?.lastName}'),
          leading: Image.network(user?.avatar ?? ''),
          subtitle: Text(user?.email ?? ''),
      )
      ),
    );
  }
}