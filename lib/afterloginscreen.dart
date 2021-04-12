import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Afterloginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text('After Login Screen'),
          ),
          TextButton(
              onPressed: () async => await FirebaseAuth.instance.signOut(),
              child: Text("Signout"))
        ],
      ),
    );
  }
}
