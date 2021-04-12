import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:welcome_login_signup/component/roundedinput.dart';
import 'package:welcome_login_signup/component/roundedinputpassword.dart';

class Login extends StatelessWidget {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Future<void> _submit() async {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: _emailcontroller.text,
                password: _passwordcontroller.text);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }

    return Column(
      children: [
        Text('Welcome !'),
        SizedBox(
          height: 10,
        ),
        RoundedInput('Email', _emailcontroller),
        SizedBox(
          height: 10,
        ),
        RoundedInputpassword(_passwordcontroller),
        ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.only(left: 50, right: 50))),
            onPressed: _submit,
            child: Text('Login')),
        Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
