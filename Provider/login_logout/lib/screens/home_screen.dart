import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/user_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome ${userProvider.username}"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              userProvider.logout();
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          userProvider.isLoggedIn
              ? "You're logged in as ${userProvider.username}"
              : "You're not logged in.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
