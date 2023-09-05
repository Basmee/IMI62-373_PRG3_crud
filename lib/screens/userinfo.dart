import 'package:flutter/material.dart';
import 'package:thelast/screens/users.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Users user = Users();
    user = ModalRoute.of(context)!.settings.arguments as Users;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
        elevation: 5,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              title: Text("Full Name"),
              subtitle: Text("${user.fullname}"),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("${user.email}"),
            ),
            ListTile(
              title: Text("Gender"),
              subtitle: Text("${user.gender}"),
            ),
          ],
        ),
      ),
    );
  }
}
